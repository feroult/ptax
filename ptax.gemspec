version = '0.3.beta'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'ptax'
  s.version     = version
  s.summary     = 'Ruby API Wrapper for public data avaiable at Brazilian Central Bank web site'
  s.description = 'Ruby API Wrapper for public data avaiable at Brazilian Central Bank web site'

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = ">= 1.3.6"

  s.author            = 'Fernando Ultremare'
  s.email             = 'feroult@gmail.com'
  s.homepage          = ''

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rest-client',  '>= 1.6.7')
  s.add_dependency('nokogiri',  '>= 1.5.0')
end
