# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = “Mansoor”
  spec.version       = '1.0'
  spec.authors       = ["Mansoor Ali"]
  spec.email         = ["mansoor.hussain776@gmail.com"]
  spec.summary       = %q{my first project}
  spec.description   = %q{this is my first project in ruby.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/Mansoor.rb']
  spec.executables   = ['bin/Mansoor’]
  spec.test_files    = ['tests/test_Mansoor.rb']
  spec.require_paths = ["lib"]
end