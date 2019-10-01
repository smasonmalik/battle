feature 'Attack Plater 2' do
  scenario 'Receives confirmation of attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'James attacks Sid'
  end

  scenario "player 2 HP reduces by 10HP" do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Sid: 100HP'
    expect(page).to have_content 'Sid: 90HP'
  end
end
