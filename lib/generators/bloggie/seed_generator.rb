module Bloggie
  module Generators
    class SeedGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_seed
        post = BlogPost.create(title: 'Your First Blog Post', body: 'Congratulations! This is your first blog post.')
        category = BlogCategory.create(name: 'General')
        category.blog_posts << post
        post.blog_comments.create(name: 'Andrew Culver', body: 'Good job. Please let me know if you had any trouble so the documentation can be improved.', approved: true)
      end
    end
  end
end
