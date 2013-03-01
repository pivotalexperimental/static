require "static/version"
require "middleman"
require "static/templates/pivotal"

if defined?(Rake)
  Rake.add_rakelib(File.expand_path('../static/tasks', __FILE__))
end
