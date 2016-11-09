lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name           = 'scit'
  s.version        = '0.0.1'
  s.date           = '2016-11-08'
  s.summary        = 'Gem to parse'
  s.description    = 'Gem to parse'
  s.authors        = ['Gabriel Malaquias']
  s.email          = 'gabriel07malakias@gmail.com'
  s.homepage       = 'https://github.com/GabrielMalakias/scit'
  s.license        = 'MIT'

  s.files          = %w(README.md) + Dir['lib/**/*']
  s.executables    = s.files.grep(%r(bin/)) { |f| File.basename(f) }
  s.test_files     = Dir['spec/**/*']
  s.require_paths  = ['lib']

  s.add_dependency 'virtus'
  s.add_dependency 'dry-auto_inject'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-mocks'
  s.add_development_dependency 'rspec-its'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'pry'
end
