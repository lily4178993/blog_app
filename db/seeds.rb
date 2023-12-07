first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'Yello', text: 'This is my Second post')
third_post = Post.create(author: first_user, title: 'Zello', text: 'This is my third post')
fourth_post = Post.create(author: first_user, title: 'Mello', text: 'This is my fourth post')

first_comment = Comment.create(post: first_comment, user: second_user, text: 'Hi Tom!' )
second_comment = Comment.create(post: second_comment, user: second_user, text: 'Hi Zom!' )
third_comment = Comment.create(post: third_comment, user: second_user, text: 'Hi Com!' )
fourth_comment = Comment.create(post: fourth_comment, user: second_user, text: 'Hi Mom!' )