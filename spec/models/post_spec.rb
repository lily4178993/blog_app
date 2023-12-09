RSpec.describe Post, type: :model do
  describe '#recent_comments' do
    let(:user) { User.create(name: 'Joy', photo: 'https://www.google.com/url', bio: 'she is a software developer', posts_counter: 0) }
    let(:post) do
      Post.create!(author_id: user.id, title: 'Post 1', text: 'This is post 1', comments_counter: 0, likes_counter: 0)
    end

    it 'returns 5 most recent comments for a post' do
      6.times { |i| Comment.create(post:, user:, text: "Comment #{i + 1}") }

      recent_comments = post.reload.comments.order(created_at: :desc).limit(5)

      expect(recent_comments.count).to eq(5)
      expect(recent_comments.first.text).to eq('Comment 6')
      expect(recent_comments.last.text).to eq('Comment 2')
    end
  end
end
