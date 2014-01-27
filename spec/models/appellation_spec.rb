require 'spec_helper'

describe Appellation, 'associations' do
  it { expect(subject).to have_many(:wineries) }
  it { expect(subject).to belong_to(:region) }
end

describe Appellation, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:region_id) }
end
