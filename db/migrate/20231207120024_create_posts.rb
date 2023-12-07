class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.bigint 'author_id'
      t.string 'title'
      t.text 'text'
      t.integer 'comments_counter'
      t.integer 'likes_counter'
      t.index ['author_id'], name: 'index_posts_on_author_id'
      t.timestamps
    end
  end
end
