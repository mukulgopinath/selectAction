
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "selectAction/version"

Gem::Specification.new do |spec|
  spec.name          = "selectAction"
  spec.version       = SelectAction::VERSION
  spec.authors       = ["DESKTOP-83C18M7\\Mukul Gopinath"]
  spec.email         = ["x17123739@student.ncirl.ie"]

  spec.summary       = %q{Render values based on the select option}
  spec.description   = %q{Changes the select option based on the value of the base table}
  spec.homepage      = "https://github.com/x17123739/selectAction"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
