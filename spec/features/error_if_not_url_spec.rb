feature "Adding a non-URL" do

  scenario "Adding a non-URL raises an error" do
    visit('/')
    fill_in('link_box', with: 'not_a_link')
    click_button('Add')

    expect(page).not_to have_content('not a link')
    expect(page).to have_content("This is not a link")
  end

end
