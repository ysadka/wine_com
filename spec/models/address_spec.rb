require 'spec_helper'

describe Address, 'associations' do
  it { expect(subject).to have_and_belong_to_many(:users) }
end

describe Address, 'validations' do
end
