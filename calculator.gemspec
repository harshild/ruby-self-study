# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'calculator'
  spec.version       = '1.0'
  spec.authors       = [
      'Harshil D',
      'Sagar M'
  ]
  spec.add_dependency 'thor'
  spec.add_dependency 'rspec-expectations'
  spec.add_dependency 'rspec-mocks'
  spec.add_dependency 'rspec-core'
  spec.add_dependency 'rspec'
  spec.email         = ['youremail@yourdomain.com']
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = 'http://domainforproject.com/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {tests}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']
end