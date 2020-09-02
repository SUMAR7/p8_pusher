require_relative 'lib/p8_pusher/version'

Gem::Specification.new do |spec|
  spec.name = 'p8_pusher'
  spec.version = P8Pusher::VERSION
  spec.authors = ['sumar7']
  spec.email = ['sajjadumardev@gmail.com']

  spec.summary = 'Apple push notifications using the new p8 format instead of pemfile'
  spec.homepage = 'https://github.com/SUMAR7/p8_pusher'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/SUMAR7/p8_pusher'
  spec.metadata['changelog_uri'] = 'https://github.com/SUMAR7/p8_pusher'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Dependencies
  spec.add_dependency 'commander', '~> 4.5'
  spec.add_dependency 'json', '~> 2.3'
  spec.add_dependency 'jwt', '~> 2.2'
  spec.add_dependency 'net-http2', '~> 0.18.2'

  # Development Dependencies
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
end
