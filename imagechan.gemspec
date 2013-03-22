# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imagechan/version'

Gem::Specification.new do |gem|
  gem.name          = "imagechan"
  gem.version       = Imagechan::VERSION
  gem.authors       = ["virtualpain"]
  gem.email         = ["uehara.kikumi@gmail.com"]
  gem.description   = %q{Downloading 4chan images}
  gem.summary       = %q{Easily downloading 4chan images in a thread with a single command}
  gem.homepage      = "http://eirworks.net/projects/imagechan"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency 'nokogiri', '>= 1.5.6'
end
