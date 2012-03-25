$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bloggie/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bloggie"
  s.version     = Bloggie::VERSION
  s.authors     = ["Andrew Culver"]
  s.email       = ["andrew.culver@gmail.com"]
  s.homepage    = "http://github.com/andrewculver/bloggie"
  s.summary     = "Rails 3.0 Mountable Blog Engine"
  s.description = "Implements many blog features like comments, categories, and archives."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  s.add_dependency "haml"
  s.add_dependency "stamp"
  s.add_dependency "bluecloth"

  s.add_development_dependency "sqlite3"
end
