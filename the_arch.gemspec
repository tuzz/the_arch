Gem::Specification.new do |s|
  s.name        = "the_arch"
  s.version     = "1.0.0"
  s.summary     = "The Arch"
  s.description = "A Ruby client for The Arch Climbing Wall API."
  s.author      = "Chris Patuzzo"
  s.email       = "chris@patuzzo.co.uk"
  s.homepage    = "https://github.com/tuzz/the_arch"
  s.files       = ["README.md"] + Dir["lib/**/*.*"]

  s.add_dependency "nokogiri"
  s.add_dependency "hashie"

  s.add_development_dependency "rspec"
  s.add_development_dependency "fakeweb"
end
