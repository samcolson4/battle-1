feature 'Testing infrastructure' do
  scenario 'displays "testing infrastructure working"' do 
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end 
end

feature 'players submit names in a form' do
  scenario 'players enter names in a form and then see their names on screen' do
    sign_in_and_play
    expect(page).to have_content "Sam vs. Courtenay"
  end

end

feature "can view player 2's hit points" do
  scenario 'view hit points' do 
    sign_in_and_play
    expect(page).to have_content "Player 2 HP: 100"
  end 
end

feature 'attack p2' do 
  scenario 'can attack p2' do
  sign_in_and_play
  click_on('attack')
  expect(page).to have_content "You've attacked Player 2!"
  end
end 