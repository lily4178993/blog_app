first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post = Post.create(author_id: first_user.id, title: 'Mister', text: 'This is Tom first post')
second_post = Post.create(author_id: second_user.id, title: 'Miss', text: 'This is Lily first post')

first_comment = Comment.create(user_id: first_user.id, post_id: first_post.id, text: 'Tom first comment!')
second_comment = Comment.create(user_id: second_user.id, post_id: second_post.id, text: 'Lily second comment!')

# puts first_user