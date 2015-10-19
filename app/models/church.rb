class Church < ActiveRecord::Base
  has_one :location
  has_many :building_images
end
