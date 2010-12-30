require 'enumerator'

spec = Gem::Specification.new do |s|
  s.name = 'ftdic'
  s.version = File.read('VERSION').chomp
  s.summary = 'A wrapper for the libftdi library'
  s.homepage = 'http://github.com/cout/ftdic/'
  s.author = 'Paul Brannan'
  s.email = 'curlypaul924@gmail.com'

  s.description = <<-END
FTDIC is a wrapper for the libftdi library.  Libftdi is a library for
communicating with FTDI chips, used for serial communications.
  END


  patterns = [
    'VERSION',
    'COPYING',
    'LGPL',
    'LICENSE',
    'README',
    'lib/*.rb',
    'lib/jit/*.rb',
    'ext/*.rb',
    'ext/*.c',
    'ext/*.h',
    'ext/*.rpp',
    'sample/*.rb',
  ]

  s.files = patterns.collect { |p| Dir.glob(p) }.flatten

  s.test_files = Dir.glob('test/test_*.rb')

  s.extensions = 'ext/extconf.rb'

  s.has_rdoc = true
end

