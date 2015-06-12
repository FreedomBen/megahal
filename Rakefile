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
  gem.name = "megahal-freedomben"
  gem.homepage = "https://github.com/FreedomBen/megahal"
  gem.license = "UNLICENSE"
  gem.summary = %Q{MegaHAL is a learning chatterbot.}
  gem.description = %Q{Have a weird conversation with a computer.}
  gem.email = "jasonhutchens@gmail.com"
  gem.authors = ["Jason Hutchens", "Benjamin Porter"]
  gem.required_ruby_version = "~> 2.1"
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
