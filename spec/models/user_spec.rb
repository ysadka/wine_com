require 'spec_helper'

describe User, 'associations' do
  it { expect(subject).to have_and_belong_to_many(:addresses) }
  it { expect(subject).to have_and_belong_to_many(:subscriptions) }
  it { expect(subject).to have_many(:orders) }
  it { expect(subject).to have_many(:purchases) }
end

describe User, 'validations' do
end
