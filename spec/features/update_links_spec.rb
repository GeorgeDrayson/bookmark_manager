feature "Updating links" do

  scenario "updating links" do
    visit('/')
    fill_in('link_box', with: 'http://store.steampowered.com/')
    fill_in('title_box', with: "Steam")
    click_button('Add')
    within("#Steam") do
      click_button('Edit')
    end
    fill_in('title_box', with: "Steam store")
    click_button('Add')
    expect(page).to have_content("Steam store")
  end

end
