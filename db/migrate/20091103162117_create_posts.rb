class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.references  :category
      t.string      :title, :slug
      t.boolean     :active
      t.text        :body, :body_html, :excerpt, :excerpt_html
      t.datetime    :published_at
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
