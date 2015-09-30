# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knife-hardware/version'

Gem::Specification.new do |gem|
  gem.name          = "knife-hardware"
  gem.version       = Knife::Hardware::VERSION
  gem.authors       = ["Paul Thomas"]
  gem.email         = ["paul@paulthomas.eu"]
  gem.description   = %q{Automatically link the hardware data bag items to their node}
  gem.summary       = %q{Links items in the hardware data bag to a node using the UUID as a key}
  gem.homepage      = "https://github.com/Afterglow/knife-hardware"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "chef"
end
