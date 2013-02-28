RAKE_ROOT = __FILE__


require "rubygems"
require "middleman"
require "middleman-gh-pages"
require "middleman-core/cli"
require "./templates"

desc "Generate a new Pivotal branded site."
namespace :static do
  task :generate do
    #sh "middleman init . --rack -T=pivotal"
    dir = ENV["DIR"]
    unless (dir)
      puts "Usage: rake static:generate DIR=[target directory]"
      exit 1
    end
    generator = Middleman::Cli::Init.new
    generator.options = {template: "pivotal", rack: true}
    generator.init(dir)

    # fix some stuff
    sh "cd #{dir} && echo \"\ngem 'middleman-gh-pages'\" >> Gemfile"
    sh "cd #{dir} && echo \"require 'middleman-gh-pages'\" > Rakefile"
  end
end
