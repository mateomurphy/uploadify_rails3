namespace :uploadify_rails3 do
  task :install => :environment do
    require 'fileutils'

    here = UploadifyRails3::Railtie.root
    there = Rails.root

    puts here

    puts "Installing Uploadify..."
    FileUtils.cp_r("#{here}/public/javascripts/uploadify/", "#{there}/public/javascripts/")
#    FileUtils.cp("#{here}/public/images/cancel.png", "#{there}/public/images/")

    puts "================================Installation Complete!==========================================="

    puts "You will need to edit config/initializers/session_store.rb to add in the new Middleware."

    puts "You will also need to have the jquery and jquery-ui libraries installed."

    puts "Refer to the README.rdoc for specific instructions."

  end
end