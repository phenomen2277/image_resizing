# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'image_resizing/version'

Gem::Specification.new do |spec|
  spec.name          = "image_resizing"
  spec.version       = ImageResizing::VERSION
  spec.authors       = ["Jone Samra"]
  spec.email         = ["jonemob@gmail.com"]
  spec.summary       = %q{An easy way to resize images using ImageMagick with Ruby.}
  spec.description   = %q{An easy way to resize images using ImageMagick with Ruby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0.0"
  spec.add_runtime_dependency "rmagick", ">= 2.13.2"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
