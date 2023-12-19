require 'rails_helper'

RSpec.describe LikesController, type: :request do
  describe 'POST /create' do
    let(:user) { User.create(name: 'John Doe', photo: 'path/to/photo.jpg', bio: 'Sample bio text') }
    let(:post) { Post.create(
      author: user,
      title: 'Sample Title',
      text: 'Sample post content'
    ) }

    it 'creates a new like and redirects on success' do
      Like.create(user_id: user.id, post_id: post.id)
      expect do
        post.reload
      end.to change { post.likes_counter }.by(1)

      redirect_to(user_post_path(post.author, post))
    end
  end
end
