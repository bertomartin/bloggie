class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.integer :blog_post_id
      t.string :name
      t.text :body
      t.boolean :approved

      t.timestamps
    end
  end
end
