# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inspec_to/version'

Gem::Specification.new do |spec|
  spec.name          = "inspec_to"
  spec.version       = InspecTo::VERSION
  spec.authors       = ["Robert Thew"]
  spec.email         = ["rthew@mitre.org"]

  spec.summary       = "Converter utils for Inspec"
  spec.description   = "Converter utils for Inspec"
  spec.homepage      = "http://gitlab.mitre.org"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  #spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         = Dir.glob("{lib,spec,exe}/**/*")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib","exe"]


  spec.add_dependency "OptionParser", '~> 0'
  spec.add_dependency 'colorize', '~> 0'
  spec.add_dependency 'word_wrap', '~> 0'
  spec.add_dependency 'inspec', '~> 2'

  spec.add_dependency 'nokogiri-happymapper', '~> 0'#, :require => 'happymapper'
  # spec.add_dependency 'happymapper', '~> 0.5'
  spec.add_dependency 'nokogiri', '~> 1.8'
  spec.add_dependency 'thor', '~> 0.19'
  spec.add_dependency 'json', '>= 1.8', '< 3.0'
  # spec.add_dependency 'yaml', '~> 0'

  spec.add_development_dependency 'pry', '~> 0'
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.required_ruby_version = '>= 2.1'

end
