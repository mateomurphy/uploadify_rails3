# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{uploadify_rails3}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mateo Murphy"]
  s.date = %q{2011-01-26}
  s.description = %q{A Rails 3 gem for uploadify}
  s.email = %q{mateo.murphy@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/flash_session_cookie_middleware.rb",
    "lib/tasks.rake",
    "lib/uploadify_rails3.rb",
    "lib/uploadify_rails_helper.rb",
    "public/images/cancel.png",
    "public/javascripts/uploadify/jquery.uploadify.v2.1.4.min.js",
    "public/javascripts/uploadify/swfobject.js",
    "public/javascripts/uploadify/uploadify.swf",
    "public/javascripts/uploadify/uploadify_rails3.js",
    "test/helper.rb",
    "test/test_uploadify_rails3.rb",
    "uploadify_rails3.gemspec"
  ]
  s.homepage = %q{http://github.com/mateomurphy/uploadify_rails3}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A Rails 3 gem for uploadify}
  s.test_files = [
    "test/helper.rb",
    "test/test_uploadify_rails3.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

