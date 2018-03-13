feature "Add new links" do

  scenario "User adds a new link" do
    visit('/')
    # fill_in('link_box', with: 'https://tableplus.io/')
    # click_button('Add')
    expect(page).to have_content('Links')
    # expect(page).to have_content('https://tableplus.io/')
  end

end
