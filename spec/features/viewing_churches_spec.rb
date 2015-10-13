require 'rails_helper'

feature 'viewing churches' do
  context 'no churches have been added' do
    scenario 'should display no churches' do
      visit '/churches'
      expect(page).to have_content 'No churches have been added yet!'
      expect(page).to have_link 'Add A Church'
    end
  end
end