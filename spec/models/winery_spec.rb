require 'spec_helper'

describe Winery, 'associations' do
  it { expect(subject).to have_many(:wines) }
  it { expect(subject).to belong_to(:appellation) }
  it { expect(subject).to belong_to(:region) }
end

describe Winery, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:appellation_id) }
  it { expect(subject).to validate_presence_of(:region_id) }
end
