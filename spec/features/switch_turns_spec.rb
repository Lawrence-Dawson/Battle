require 'spec_helper'

feature 'switch turns' do
  scenario 'Game initiates with player_1s turn' do
    sign_in_and_play
    expect(page).to have_content "Lawrence's turn"
  end

  scenario 'it becomes player_2s turn after player_1s' do
    sign_in_and_play
    click_button 'Attack!'
    click_link 'OK'
    expect(page).to have_content "James's turn"
    expect(page).not_to have_content "Lawrence's turn"
  end
end
