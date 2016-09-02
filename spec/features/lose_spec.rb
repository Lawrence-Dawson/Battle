require 'spec_helper'

feature 'lose game' do
  scenario 'player loses a game' do
    finish_game
    expect(page).to have_content 'Lawrence wins! James loses!!!'
  end
end
