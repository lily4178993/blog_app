class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # update the posts counter for a user by 1
  after_save :update_posts_counter

  private

  def update_posts_counter
    author.increment!(:posts_counter)
  end

  #  return 5 most recent comments for a given post
  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
