
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "event_manager/version"

Gem::Specification.new do |spec|
  spec.name          = "event_manager"
  spec.version       = EventManager::VERSION
  spec.authors       = ["Adam Bohannon"]
  spec.email         = ["abo46n2@gmail.com"]

  spec.summary       = "Event manager project"
  spec.description   = "Event manager project"
  spec.homepage      = "https://github.com/abohannon"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
