class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.bigint 'user_id'
      t.bigint 'post_id'
      t.index ['post_id'], name: 'index_likes_on_post_id'
      t.index ['user_id'], name: 'index_likes_on_user_id'
      t.timestamps
    end
  end
end
