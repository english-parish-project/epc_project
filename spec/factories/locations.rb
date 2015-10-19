FactoryGirl.define do
  factory :location do
    town 'London'
    buildings_of_england_volume 'Suffolk'
    county 'Suffolk'
    diocese 'Chester'
    archdeaconry 'York'
    latitude '50.1'
    longitude '20.1'
    association :church
  end
end
