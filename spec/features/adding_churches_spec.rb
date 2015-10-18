require 'rails_helper'
require 'pry'

feature 'adding churches' do
  context 'no churches have been added' do
    scenario 'should display a prompt to add a church' do
      visit root_path
      expect(page).to have_link 'Add A Church'
    end
  end
  
  context 'creating church with needed information' do
    scenario 'prompts user to fill out a form' do
     visit root_path
     click_link 'Add A Church'
     fill_in 'Name', with: 'Church 1'
     select '700-725', :from => 'Date first mention in text'
     fill_in 'First mention description', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
     select '700-725', :from => 'Date earliest extant fabric'
     fill_in 'Earliest extant fabric description', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
     select '700-725', :from => 'Date earliest extant fabric'
     fill_in 'General narrative', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
     click_button 'Next - Add Location'
     click_button 'Add Church'
     expect(current_path).to eq root_path
     expect(page).to have_content 'Church 1'
    end
  end
  
  context 'adding location to church' do    
    scenario do
      add_church
      click_button 'Next - Add Location'
      fill_in "Town", with: "Town"
      select "Suffolk", :from => "Buildings of england volume"
      select "Suffolk", :from => "County"
      select "Norwich", :from => "Diocese"
      fill_in "Archdeaconry", with: "York"
      fill_in "Longitude", with: "50.1"
      fill_in "Latitude", with: "50.2"
      click_button 'Add Church'
      expect(current_path).to eq root_path
      expect(page).to have_content("Church 1 700-725 Town Suffolk")
    end
  end
end