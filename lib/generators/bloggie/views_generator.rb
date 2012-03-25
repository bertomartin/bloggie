module Bloggie
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_views
        puts "Testing"
      end
    end
  end
end

# 
# module Bloggie
#   module Generators
#     class ViewsGenerator < Rails::Generators::Base
#       source_root File.expand_path('../../../../app/views', __FILE__)
# 
#       def generate_views
#         ["bloggie/blog_categories/show.html.haml"
#             "bloggie/blog_posts/index.html.haml"
#             "bloggie/blog_posts/show.html.haml"
#             "bloggie/shared/_categories.html.haml"
#             "bloggie/shared/_comments.html.haml"
#             "bloggie/shared/_new_comment.html.haml"
#             "bloggie/shared/_post.html.haml"
#             "bloggie/shared/_preview.html.haml"].each do |path|
#           copy_file path, path
#         end
#       end
#       
#     end
#   end
# end
