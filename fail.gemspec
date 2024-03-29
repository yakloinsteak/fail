# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fail/version'

Gem::Specification.new do |spec|
  spec.name          = "fail"
  spec.version       = Fail::VERSION
  spec.authors       = ["Todd Blackman"]
  spec.email         = ["tdblackman@gmail.com"]
  spec.summary       = %q{tail -f replacement with advanced filtering features}
  spec.description   = %q{Watch growing files with filtering such as whitelisting, blacklisting, and truncating lines.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
