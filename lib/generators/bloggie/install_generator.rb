module Bloggie
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_install
        generate "migration", "create_blog_post title:string body:text published_at:datetime"
        generate "migration", "create_blog_category name:string"
        generate "migration", "create_blog_post_category blog_post_id:integer blog_category_id:integer"
        generate "migration", "create_blog_comment blog_post_id:integer name:string body:text approved:boolean"
        route("mount Bloggie::Engine => '/blog'")
      end
    end
  end
end
