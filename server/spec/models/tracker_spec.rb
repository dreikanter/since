require 'rails_helper'

RSpec.describe Tracker, :type => :model do
  before :each do
    @tracker = build(:tracker)
  end

  it 'should pass validation' do
    expect(@tracker).to be_valid
  end

  it 'should save when valid' do
    expect(@tracker.save).to be true
  end

  it 'should not pass validation with bad secret' do
    expect(build(:tracker, :bad_secret)).not_to be_valid
  end
end
