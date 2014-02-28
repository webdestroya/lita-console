Gem::Specification.new do |spec|
  spec.name          = "lita-console"
  spec.version       = "0.0.2"
  spec.authors       = ["Mitch Dempsey"]
  spec.email         = ["mrdempsey@gmail.com"]
  spec.description   = %q{Provides a better shell adapter that allows for history}
  spec.summary       = %q{Provides a better shell adapter that allows for history}
  spec.homepage      = "https://github.com/webdestroya/lita-console"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"

  spec.metadata = { "lita_plugin_type" => "handler" }
end
