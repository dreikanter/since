require 'rails_helper'

RSpec.describe Notification, :type => :model do
  before :each do
    @notification = build(:notification)
  end

  it 'should pass validation' do
    expect(@notification).to be_valid
  end

  it 'should save when valid' do
    expect(@notification.save).to be true
  end

  it 'should be readonly after saved' do
    expect(@notification.readonly?).to be false
    @notification.save
    expect(@notification.readonly?).to be true
  end

  it 'should not pass validation with bad secret' do
    expect(build(:notification, :bad_secret)).not_to be_valid
  end
end
