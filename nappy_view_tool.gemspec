
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nappy_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "nappy_view_tool"
  spec.version       = NappyViewTool::VERSION
  spec.authors       = ["Travis Siebenhaar"]
  spec.email         = ["travis@example.com"]

  spec.summary       = %q{Copyright view method for applications I use.}
  spec.description   = %q{Provides generated HTML copyright data for Rails application.}
  spec.homepage      = "https://github.com/Nappstir"
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
