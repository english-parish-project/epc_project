require 'rails_helper'
require 'pry'

feature 'adding images' do
  before do 
    create(:location)
  end
  
  context "adding images to existing churches" do
    scenario "added churches should have an add images link" do
      visit root_path
      expect(page).to have_content 'Test Church' 
      expect(page).to have_link 'Add Images'
    end
  end
end