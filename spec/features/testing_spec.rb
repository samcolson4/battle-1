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

feature "can view player 1's hit points" do 
  scenario 'view hit points' do 
    sign_in_and_play
    expect(page).to have_content "Sam HP: 100"
  end
end


feature "can view player 2's hit points" do
  scenario 'view hit points' do 
    sign_in_and_play
    expect(page).to have_content "Courtenay HP: 100"
  end 
end

feature 'attack p2' do 
  scenario 'can attack p2' do
  sign_in_and_play
  click_on('attack player two')
  expect(page).to have_content "You've attacked Player 2!"
  end

  scenario 'takes away 10hp from p2' do
    sign_in_and_play
    click_on('attack player two')
    expect(page).to have_content "Player two HP = 90"
  end
end

feature 'attack p1' do 
  scenario 'can attack p1' do
    sign_in_and_play
    click_on('attack player one')
    expect(page).to have_content "You've attacked Player 1!"
  end
  
  scenario 'takes away 10hp from p1' do
    sign_in_and_play
    click_on('attack player one')
    expect(page).to have_content "Player one HP = 90"
  end
end

feature 'switch turns two -> one' do
  scenario 'after attacking, the user can return to the main page' do
    sign_in_and_play
    click_on('attack player one')
    click_on('Back to the battle!')
    expect(page).to have_content "Sam vs. Courtenay"
  end
end
 
feature 'switch turns one -> two' do
  scenario 'after attacking, the user can return to the main page' do
    sign_in_and_play
    click_on('attack player two')
    click_on('Back to the battle!')
    expect(page).to have_content "Sam vs. Courtenay"
  end
end
 