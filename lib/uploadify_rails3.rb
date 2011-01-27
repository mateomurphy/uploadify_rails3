require 'flash_session_cookie_middleware'
require 'uploadify_rails_helper'
require 'rails'

# UploadifyRails
module UploadifyRails3
  class Railtie < Rails::Railtie
    config.after_initialize do |app|
=begin
    # this isn't working properly, for some reason
      app.config.middleware.insert_before(
        ActionDispatch::Session::CookieStore,
        FlashSessionCookieMiddleware,
        app.config.session_options[:key]
      )
=end      
      ActionView::Helpers::AssetTagHelper.register_javascript_expansion :uploadify => [
        'uploadify/jquery.uploadify.v2.1.0.min', 
        'uploadify/swfobject', 
        'uploadify/uploadify_rails3'
      ]
      
      ActionView::Base.send :include, UploadifyRailsHelper 
      
    end
    
    rake_tasks do
      load File.expand_path('../tasks.rake', __FILE__)
    end
    
    def self.root
      File.expand_path('../../', __FILE__)
    end
  end
end