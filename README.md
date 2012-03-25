# Bloggie

A Mountable Blog Engine for Rails.

## Usage

Add the following to your `Gemfile`:

    gem 'bloggie', git: 'git@github.com:andrewculver/bloggie.git'
    
Then run the following:

    $ rails g bloggie:install
    $ rake db:migrate
    $ rails g bloggie:seed

This will:

 * create the required migrations
 * mount the engine at `/blog`
 * create a sample post, category, and comment.

**