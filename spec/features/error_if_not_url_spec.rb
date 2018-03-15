feature "Adding a non-URL" do

  scenario "Adding a non-URL raises an error" do
    visit('/')
    fill_in('link_box', with: 'goof')
    fill_in('title_box', with: 'gaff')
    click_button('Add')

    expect(page).not_to have_content('gaff')
    expect(page).to have_content("This is not a link")
  end

end
