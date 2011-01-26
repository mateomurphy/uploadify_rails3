require 'flash_session_cookie_middleware'
require 'rails'

# UploadifyRails
module UploadifyRails3
  class Railtie < Rails::Railtie
    config.after_initialize do |app|
      app.middleware.insert_before(
        ActionDispatch::Session::CookieStore,
        FlashSessionCookieMiddleware,
        app.config.session_options[:key]
      ) 
    end
    
    rake_tasks do
      load File.expand_path('../tasks.rake', __FILE__)
    end
    
    def self.root
      File.expand_path('../../', __FILE__)
    end
  end
end