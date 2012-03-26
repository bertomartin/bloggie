module Bloggie
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../..', __FILE__)

      def generate_views

        ["app/views/bloggie/blog_categories/show.html.haml",
         "app/views/bloggie/blog_posts/index.html.haml",
         "app/views/bloggie/blog_posts/show.html.haml",
         "app/views/bloggie/shared/_categories.html.haml",
         "app/views/bloggie/shared/_comments.html.haml",
         "app/views/bloggie/shared/_new_comment.html.haml",
         "app/views/bloggie/shared/_post.html.haml",
         "app/views/bloggie/shared/_preview.html.haml"].each do |path|
          copy_file path, path
        end

      end
    end
  end
end
