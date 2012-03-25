module Bloggie
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)

      def self.next_migration_number(dirname)
        orm = Rails.configuration.generators.options[:rails][:orm]
        require "rails/generators/#{orm}"
        "#{orm.to_s.camelize}::Generators::Base".constantize.next_migration_number(dirname)
      end


      def generate_install
        migration_template "create_blog_categories.rb", "db/migrate/create_blog_categories.rb"
        migration_template "create_blog_comments.rb", "db/migrate/create_blog_comments.rb"
        migration_template "create_blog_post_categories.rb", "db/migrate/create_blog_post_categories.rb"
        migration_template "create_blog_posts.rb", "db/migrate/create_blog_posts.rb"
        route("mount Bloggie::Engine => '/blog'")
      end

    end
  end
end
