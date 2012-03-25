require 'haml'
require 'bluecloth'
module Bloggie
  class Engine < Rails::Engine
    isolate_namespace Bloggie
  end
end
