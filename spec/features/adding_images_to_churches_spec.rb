require 'rails_helper'
require 'pry'

feature 'adding images' do
  before do 
    create(:location)
  end
  
  context "add images link" do
    scenario "added churches should have an add images link" do
      visit root_path
      expect(page).to have_content 'Test Church' 
      expect(page).to have_link 'Add Images'
    end
  end
  
  context 'adding images to churches' do
    scenario 'prompts users to fill out a from' do
      file_path = "./app/assets/images/test_image.jpg"
      visit root_path
      click_link 'Add Images'
      fill_in 'Description', with: 'Church image test description'
      attach_file "building_image_church_images", file_path
      click_button 'Add Images'
      expect(current_path).to eq root_path
      expect(page).to have_content "Church image test description"
    end
  end
end