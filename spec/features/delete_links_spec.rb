feature "Deleting links" do

  scenario "You can delete a link" do
    visit('/')
    fill_in('link_box', with: 'https://tableplus.io/')
    fill_in('title_box', with: "Tableplus")
    click_button('Add')
    within("#Tableplus") do
      click_button('Delete')
    end
    expect(page).not_to have_content('Tableplus')
  end

end
