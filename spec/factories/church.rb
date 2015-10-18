FactoryGirl.define do
  factory :church do
    name 'Test Church'
    date_first_mention_in_text '700-725'
    first_mention_description "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
    date_earliest_extant_fabric '700-725'
    earliest_extant_fabric_description "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
    general_narrative "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
  end
end