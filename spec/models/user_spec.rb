require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#recent_posts' do
    let(:user) { User.create(name: 'Joy', photo: 'https://www.google.com/url', bio: 'she is a software developer', posts_counter: 0) }

    it 'returns 3 most recent posts for a user' do
      # Save the user first
      user.save

      # Creating 4 posts for the user
      post1 = Post.create(author_id: user.id, title: 'Post 1', text: 'This is post 1', comments_counter: 0,
                          likes_counter: 0)
      post2 = Post.create(author_id: user.id, title: 'Post 2', text: 'This is post 2', comments_counter: 0,
                          likes_counter: 0)
      post3 = Post.create(author_id: user.id, title: 'Post 3', text: 'This is post 3', comments_counter: 0,
                          likes_counter: 0)

      # Ensure that the post is created successfully
      expect(post3).to be_valid
      
      result = user.recent_posts.to_a

      expect(result).to be_an(Array)
      expect(result.size).to eq(3)
      expect(result).to include(post1, post2, post3)
    end
  end
end
