$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "marlowe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "marlowe"
  s.version     = Marlowe::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Marlowe."
  s.description = "TODO: Description of Marlowe."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
end
