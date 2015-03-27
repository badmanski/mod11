# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mod11/version'

Gem::Specification.new do |spec|
  spec.name          = 'mod11'
  spec.version       = Mod11::VERSION
  spec.authors       = ['badmanski']
  spec.email         = ['stanislav.gorski@gmail.com']
  spec.homepage      = 'https://github.com/badmanski/mod11'

  spec.summary       = 'Modulus 11 Self-Check digits'
  spec.description   = 'Modulus 11 Self-Check digits'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(/^(test|spec|features)\//)
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
