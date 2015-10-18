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
     click_button 'Create Church'
     expect(current_path).to eq root_path
     expect(page).to have_content 'Church 1'
    end
  end
end