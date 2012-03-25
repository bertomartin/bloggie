class CreateBlogPostCategories < ActiveRecord::Migration
  def change
    create_table :blog_post_categories do |t|
      t.integer :blog_post_id
      t.integer :blog_category_id

      t.timestamps
    end
  end
end
