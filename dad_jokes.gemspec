# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dad_jokes/version'

Gem::Specification.new do |spec|
  spec.name          = "dad_jokes"
  spec.version       = DadJokes::VERSION
  spec.authors       = ["Aswin Sanakan"]
  spec.email         = ["aswinsanakan@gmail.com"]

  spec.summary       = %q{Gem to generate random popular Dad Jokes.}
  spec.description   = %q{Gem to generate random popular Dad Jokes. Features include: Generating jokes, Search for jokes, Save a random joke as image (as .png), etc}
  spec.homepage      = "https://github.com/aswinsanakan/dad_jokes"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "json", '~> 1.8'
  spec.add_dependency "faraday", '~> 0.13.1'
  spec.add_dependency "faraday_middleware", '~> 0.12.2'
end
