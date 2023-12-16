first_user = User.create(name: 'Tom', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Teacher from Poland.')

first_post = Post.create(author_id: first_user.id, title: 'Mister', text: 'This is Tom first post', likes_counter: 0, comments_counter: 0)
second_post = Post.create(author_id: second_user.id, title: 'Miss', text: 'This is Lily first post', likes_counter: 0, comments_counter: 0)
third_post = Post.create(author_id: first_user.id, title: 'Mister', text: 'This is Tom third post', likes_counter: 0, comments_counter: 0)
fourth_post = Post.create(author_id: second_user.id, title: 'Miss', text: 'This is Tom fourth post', likes_counter: 0, comments_counter: 0)

first_comment = Comment.create(user_id: first_user.id, post_id: first_post.id, text: 'Tom first comment!')
second_comment = Comment.create(user_id: second_user.id, post_id: second_post.id, text: 'Lily second comment!')

# puts first_user