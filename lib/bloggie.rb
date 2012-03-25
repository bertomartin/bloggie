require 'haml'
require 'bluecloth'
require 'friendly_id'
module Bloggie
  class Engine < Rails::Engine
    isolate_namespace Bloggie
  end
end
