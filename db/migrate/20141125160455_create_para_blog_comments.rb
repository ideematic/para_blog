class CreateParaBlogComments < ActiveRecord::Migration
  def change
    create_table :para_blog_comments do |t|
      t.text :content
      t.references :post, index: true

      t.timestamps
    end
  end
end
