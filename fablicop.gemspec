# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fablicop/version'

Gem::Specification.new do |spec|
  spec.name          = 'fablicop'
  spec.version       = Fablicop::VERSION
  spec.authors       = %w[tommy ujihisa sinamon129]
  spec.email         = ['kazushige_tominaga@fablic.co.jp', 'tatsuhiro_ujihisa@fablic.co.jp', 'shihomi_katayama@fablic.co.jp']

  spec.summary       = 'fablicop is a RuboCop configration gem. '
  spec.description   = 'fablicop is a RuboCop configration gem.'
  spec.homepage      = 'https://github.com/Fablic/fablicop'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.required_ruby_version = '>= 2.5.0'

  spec.add_dependency 'rubocop', '>= 1.14', '< 1.28'
  spec.add_dependency 'rubocop-rspec', '>= 1.15.1'
  spec.add_dependency 'rubocop-rails'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'byebug'
end
