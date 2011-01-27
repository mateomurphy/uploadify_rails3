jQuery(window).load(function () {
  if (typeof(uploadifyConfig) == "undefined") {
    var uploadifyConfig = {};
  }
  
  // Create an empty object to store our custom script data
  var uploadify_script_data = {};

  // Fetch the file control and the form
  var file = jQuery('input[type=file].uploadify');
  var form = file.parents('form');

  if (file.length == 0) return;
  
  // Fetch the session info from the meta tags, if it exists
  var session_token = jQuery('meta[name=session-token]').attr('content');
  
  if (typeof(session_token) != "undefined") {
    var session_param = jQuery('meta[name=session-param]').attr('content');
    uploadify_script_data[session_param] = encodeURI(session_token);
  }

  var multi = file.hasClass('multi')

  var lastResponse = null;

  var defaultConfig = {
    multi: multi,
    queueSizeLimit: 10,
    uploader: '/javascripts/uploadify/uploadify.swf',
    script: form.attr('action') + '.js',
    cancelImg: '/images/cancel.png',
    fileDataName: file.attr('name'),
    onComplete: function(event, queueID, fileObj, response, data) {
      if (multi) {
        lastResponse = response;
      } else {
        eval(response);
      }
    },
    onAllComplete: function(event, data) {
      if (lastResponse) {
        eval(lastResponse);
      }
    }
  }

   // Configure Uploadify
  file.uploadify(jQuery.extend(defaultConfig, uploadifyConfig));
  
  // Override form submission
  form.submit(function() {
    // add form data
    jQuery.each(form.serializeArray(), function(i, field) {
      if (field.name == 'authenticity_token') {
        // need to preserve those plus signs
        uploadify_script_data[field.name] = encodeURI(field.value).replace(/\+/g, '%2B');
      } else {
        uploadify_script_data[field.name] = encodeURI(field.value);
      }
    })
    
    // update settings
    file.uploadifySettings('scriptData', uploadify_script_data);
  
    // use uploadify if there are items in the queue
    if (file.uploadifySettings('queueSize') > 0) {
      file.uploadifyUpload();
      return false;
    } else {
      return true;
    }
    
  })
  
});