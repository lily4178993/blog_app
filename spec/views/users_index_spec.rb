require 'rails_helper'

RSpec.describe 'Users Index Page', type: :feature do
  before do
    User.create(name: 'Tom', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Teacher from Mexico.', posts_counter: 3)
    User.create(name: 'Lilly', photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Teacher from Poland.', posts_counter: 2)
  end

  it 'displays usernames of all users' do
    visit users_path
    expect(page).to have_content('Tom')
    expect(page).to have_content('Lilly')
  end

  it 'displays profile pictures of all users' do
    visit users_path
    expect(page).to have_selector("img[src*='unsplash']")
  end

  it 'displays the number of posts for each user' do
    visit users_path
    expect(page).to have_content('Number of posts: 3')
    expect(page).to have_content('Number of posts: 2')
  end

  it 'redirects to user show page when user is clicked' do
    visit users_path
    click_link('Tom')
    expect(page).to have_current_path(user_path(User.find_by(name: 'Tom')))
  end
end
