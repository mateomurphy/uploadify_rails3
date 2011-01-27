module UploadifyRailsHelper

  def session_meta_tag 
    %(<meta name="session-param" content="#{Rack::Utils.escape_html(session_key_name)}"/>\n<meta name="session-token" content="#{Rack::Utils.escape_html(session_key)}"/>).html_safe
  end
  
  def session_field_tag
    hidden_field_tag session_key_name, session_key
  end

  def session_key_name
    Rails.application.config.session_options[:key]
  end
  
  def session_key
    cookies[session_key_name]
  end

end