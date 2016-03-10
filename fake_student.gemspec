$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fake_student/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fake_student"
  s.version     = Fake::VERSION
  s.authors     = ["Kyle Chang"]
  s.email       = ["hchang239@berkeley.edu"]
  s.homepage    = "TODO: Change the address"
  s.summary     = "Fake database for CtMail project"
  s.description = "This is for rpsec and cucumber tests only."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency 'faker'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails',      '~> 3.0'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1'
end
