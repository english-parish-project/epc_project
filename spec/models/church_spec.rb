require 'rails_helper'

RSpec.describe Church, type: :model do
    it { is_expected.to have_one :location }
    it { is_expected.to have_many :building_images }
end
