require 'spec_helper'

describe Cart, 'associations' do
  it { expect(subject).to belong_to(:user) }
  it { expect(subject).to have_many(:wines) }
end

describe Cart, 'validations' do
  it { expect(subject).to validate_presence_of(:quantity) }
end
