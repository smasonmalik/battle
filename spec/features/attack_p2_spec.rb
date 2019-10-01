feature 'Attack Plater 2' do
  scenario 'Receives confirmation of attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'James attacks Sid'
  end
end
