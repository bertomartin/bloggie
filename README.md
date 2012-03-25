# Bloggie

A Mountable Blog Engine for Rails.

## Usage

Add the following to your `Gemfile`:

    gem 'bloggie', git: 'git@github.com:andrewculver/bloggie.git'
    
Next, run a couple generators:

    $ rails g bloggie:install
    $ rake db:migrate
    $ rails g bloggie:seed

This will:

 * Create the required migrations.
 * Mount the engine at `/blog`.
 * Seed the database with a sample post, category, and comment.

Your blog should now be available and you can link to it with the `blog_path` URL helper.

## Managing Content

For the time being, we recommend managing blog content with [rails_admin](https://github.com/sferik/rails_admin) or something similar. Eventually the plan is to integrate with [cancan](https://github.com/ryanb/cancan) and allow managing of the blog inline.