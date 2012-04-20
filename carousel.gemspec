# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "carousel"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Morgan"]
  s.date = "2012-04-20"
  s.description = "Adds CoffeeScript and SCSS files to your Rails apps allowing you to easily create an Ajax-powered Carousel."
  s.email = "rubygems@timothymorgan.info"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "LICENSE.txt",
    "README.md",
    "carousel.gemspec",
    "lib/carousel.rb",
    "lib/carousel/paperclip/round_corners.rb",
    "vendor/assets/images/lightbox/blank.gif",
    "vendor/assets/images/lightbox/close.gif",
    "vendor/assets/images/lightbox/loading.gif",
    "vendor/assets/images/lightbox/next.gif",
    "vendor/assets/images/lightbox/prev.gif",
    "vendor/assets/javascripts/carousel.js.coffee.erb",
    "vendor/assets/javascripts/jquery.lightbox-0.5.js",
    "vendor/assets/stylesheets/carousel.css.scss",
    "vendor/assets/stylesheets/jquery.lightbox-0.5.css"
  ]
  s.homepage = "http://github.com/RISCfuture/carousel"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.21"
  s.summary = "Simple image carousels in your Rails apps."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 0"])
      s.add_runtime_dependency(%q<compass>, [">= 0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<paperclip>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<compass>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<paperclip>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<compass>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<paperclip>, [">= 0"])
  end
end

