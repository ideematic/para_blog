class CreateParaBlogComments < ActiveRecord::Migration
  def change
    create_table :para_blog_comments do |t|
      t.integer :para_blog_post_id
      t.text :content

      t.timestamps
    end
  end
end
