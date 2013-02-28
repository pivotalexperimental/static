# Static: Branded Static Site Generator
Static allows you to create custom static site templates which teams can use to generate and publish [GitHub Pages](http://pages.github.com/ "GitHub Pages") using [middleman](http://middlemanapp.com/ "Middleman: Hand-crafted frontend development") and [middleman-gh-pages](https://github.com/neo/middleman-gh-pages). The intention is to allow organizations to create branded site templates, which in turn can be used by GitHub projects under that brand to generate branded sites.

For example, an organization might want all open source project GitHub Pages to have a common theme, company logo, licensing terms, etc. Static allows you to create a common boilerplate for these pages. Each project can then use Static to generate a site and customize as needed for the individual projects. Publishing as a GitHub Page is simple using [middleman-gh-pages](https://github.com/neo/middleman-gh-pages).

# Usage
***These are incomplete and might not totally work.***

  1. **Prepare your target project**: At this time we recommend that you create an **orphan branch named 'static'** in your project. This is *similar* to [how manual GitHub Pages work](https://help.github.com/articles/creating-project-pages-manually). This is branch is where you will edit the middleman site.

        $ git clone https://github.com/user/repo.git
        $ cd repo
        $ git checkout --orphan static
        $ git rm -rf .
        $ git commit -a -m "Preparing for static site."
        $ git push origin static # this does *not* generate a github page.

  1. **Clone** the repository and bundle

        $ git clone git://github.com/pivotalexperimental/static.git
        $ cd static
        $ gem install bundler
        $ bundle
  1. **Generate the static project** into your target project's directory

        $ bundle exec rake static:generate DIR="/path/to/target/repo"
  	    $ cd /path/to/target/repo
	    $ gem install bundler
	    $ bundle
  1. Edit the site as needed, commit, push, etc. See [middleman](http://middlemanapp.com/ "Middleman: Hand-crafted frontend development").
  1. Publish to GitHub Pages. See [middleman-gh-pages](https://github.com/neo/middleman-gh-pages)

        $ rake publish

# Notes
  * This project may die quickly if we go a different direction.
  * If it survives it will likely turn into a gem.
  * The custom template is hard-coded as "pivotal" for now.
  * The pivotal template uses the very-minimal [HTML5 Boilerplate](http://middlemanapp.com/getting-started/ "Middleman: Getting Started").


# License
Copyright Pivotal Labs, 2013. All rights reserved.

... For now, until it's ready for prime time and/or we get approval to open source.