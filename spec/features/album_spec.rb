require 'rails_helper'

# feature 'User creates a new album using valid inputs' do
#   it 'successfully builds a new album with photos' do
#     user = Factory(:user)
#     visit root_path
#     click_on "New Album"
#   end

feature 'Visitor views the homepage' do
  it 'displays a list of all albums' do
    # As a user
    # I want to see all of the albums on one page
    # So that I can pick an album to look at

    #Acceptance Criteria:

    # * I see the name of each album so I know what topic the pictures will be around
    # * I see the name of the user who created the album so I know who made the album

    album = FactoryGirl.create(:album)
    visit root_path

    expect(page).to have_content album.name
    expect(page).to have_content album.user.name
  end
end
