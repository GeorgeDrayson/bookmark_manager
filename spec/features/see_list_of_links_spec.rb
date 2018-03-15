
feature 'See list of links' do

  scenario 'Open the homepage and see an array of links' do
    visit('/')

    expect(page).to have_content('Github')
    expect(page).to have_content('Google')
  end

end
