require 'rake'
require 'rake/testtask'
require 'rspec'
require 'rspec/core'
require 'rspec/core/rake_task'

Rake::TestTask.new do |t|
  t.libs << 'tests'
  t.test_files = FileList['tests/**/test*.rb']
  t.verbose = true
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = Dir.glob('spec/**/*_spec.rb')
  t.rspec_opts = '--format documentation'
  # t.rspec_opts << ' more options'
  #t.rcov = true 
end

task :default => [:test,:spec]  