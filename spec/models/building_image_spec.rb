require 'rails_helper'

RSpec.describe BuildingImage, type: :model do
  it { is_expected.to belong_to :church }
end
