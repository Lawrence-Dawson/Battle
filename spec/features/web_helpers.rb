
def sign_in_and_play
  visit "/"
  fill_in(:player_one, with: 'Lawrence')
  fill_in(:player_two, with: 'James')
  click_button('Submit')
end

def finish_game
  visit "/"
  fill_in(:player_one, with: 'Lawrence')
  fill_in(:player_two, with: 'James')
  click_button('Submit')
  19.times do
    click_button 'Attack!'
    click_button 'OK'
  end
end
