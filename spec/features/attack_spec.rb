require 'spec_helper'

feature 'attacking' do

  scenario 'attack player_two' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Lawrence attacked James'
  end

  scenario 'attack player_one' do
    sign_in_and_play
    click_button 'Attack!'
    click_link 'OK'
    click_button 'Attack!'
    expect(page).to have_content 'James attacked Lawrence'
  end
end
