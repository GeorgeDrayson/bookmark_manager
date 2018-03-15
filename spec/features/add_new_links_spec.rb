feature "Add new links" do

  scenario "User adds a new link" do
    visit('/')
    fill_in('link_box', with: 'https://tableplus.io/')
    fill_in('title_box', with: "Tableplus")
    click_button('Add')
    expect(page).to have_content('Tableplus')
  end

end
