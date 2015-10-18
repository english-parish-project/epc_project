require 'rails_helper'

RSpec.describe Location, type: :model do
  it { is_expected.to belong_to :church }
end
