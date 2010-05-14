class Tag < ActiveRecord::Base
  establish_connection :fakedb
end

class Tagging < ActiveRecord::Base
  establish_connection :fakedb
end

class FakePost < ActiveRecord::Base
  establish_connection :fakedb
  set_table_name 'posts'
end

Tag.all.each do |tag|
  Category.create :name => tag.name
end

FakePost.all.each do |post|
  Post.create(
    :title => post.title,
    :active => post.active,
    :body => post.body,
    :body_html => post.body_html,
    :excerpt => post.excerpt,
    :excerpt_html => post.excerpt_html,
    :created_at => post.created_at,
    :published_at => post.created_at,
    :updated_at => post.updated_at
  )
end

Tagging.all.each do |tag|
  Categorization.create(
    :category_id => Category.find_by_name(Tag.find(tag.tag_id).name).id,
    :post_id => Post.find_by_title(FakePost.find(tag.taggable_id).title).id
  )
end
