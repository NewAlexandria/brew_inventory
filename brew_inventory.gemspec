# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brew_inventory/version'

Gem::Specification.new do |spec|
  spec.name          = "brew_inventory"
  spec.version       = BrewInventory::VERSION
  spec.authors       = ["Zachary Jones"]
  spec.email         = ["zak@newalexandria.org"]

  spec.summary       = %q{Shows the list of all the main packages that brew installed}
  spec.description   = %q{A ruby gem that digs through the brew dependency tree, in order to give a list of the main packages installed.  Useful for configuation portability.}
  spec.homepage      = "https://github.com/NewAlexandria/brew_inventory"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "memoist"
end
