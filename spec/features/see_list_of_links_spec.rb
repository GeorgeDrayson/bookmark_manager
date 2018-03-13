
feature 'See list of links' do

  scenario 'Open the homepage and see an array of links' do
    visit('/')

    expect(page).to have_content('https://github.com/')
    expect(page).to have_content('https://www.google.co.uk/')
  end

end
