class CreateParaBlogPosts < ActiveRecord::Migration
  def change
    create_table :para_blog_posts do |t|
      t.string :title
      t.text :content
      t.date :published_on
      t.boolean :active
      t.text :slug
      t.references :component, index: true

      t.timestamps
    end
  end
end
