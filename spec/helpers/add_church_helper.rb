def add_church
  visit root_path
  click_link 'Add A Church'
  fill_in 'Name', with: 'Church 1'
  select '700-725', :from => 'Date first mention in text'
  fill_in 'First mention description', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
  select '700-725', :from => 'Date earliest extant fabric'
  fill_in 'Earliest extant fabric description', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
  select '700-725', :from => 'Date earliest extant fabric'
  fill_in 'General narrative', with: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
end

