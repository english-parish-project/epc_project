class BuildingImage < ActiveRecord::Base
  mount_uploaders :church_images, ChurchImageUploader
  
  belongs_to :church
end
