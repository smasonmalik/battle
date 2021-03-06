feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'James'
    fill_in :player_2_name, with: 'Sid'
    click_button 'Submit'
    expect(page).to have_content 'James vs. Sid'
  end

end
