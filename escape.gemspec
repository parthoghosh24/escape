# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'escape/version'

Gem::Specification.new do |spec|
  spec.name          = "escape"
  spec.version       = Escape::VERSION
  spec.authors       = ["Partho Ghosh"]
  spec.email         = ["partho.ghosh24@gmail.com"]

  spec.summary       = "Escape - A horror adventure"
  spec.description   = "My first Ruby based game. Its a text adventure. The idea is to build a small text adventure using Gosu. Lets see if this can be converted into final game or some"
  spec.homepage      = "https://github.com/parthoghosh24/escape"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "gosu", ">= 0.9.0"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 13.0"
end
