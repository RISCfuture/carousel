# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name        = "carousel"
  gem.homepage    = "http://github.com/RISCfuture/carousel"
  gem.license     = "MIT"
  gem.summary     = %Q{Simple image carousels in your Rails apps.}
  gem.description = %Q{Adds CoffeeScript and SCSS files to your Rails apps allowing you to easily create an Ajax-powered Carousel.}
  gem.email       = "rubygems@timothymorgan.info"
  gem.authors     = ["Tim Morgan"]
  gem.files       = %w( lib/**/* vendor/**/* carousel.gemspec LICENSE.txt README.md )
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'yard'
YARD::Rake::YardocTask.new('doc') do |doc|
  doc.options << '-m' << 'markdown' << '-M' << 'redcarpet'
  doc.options << '--protected' << '--no-private'
  doc.options << '-r' << 'README.md'
  doc.options << '-o' << 'doc'
  doc.options << '--title' << 'Carousel Documentation'

  doc.files = %w( lib/**/* README.md )
end
