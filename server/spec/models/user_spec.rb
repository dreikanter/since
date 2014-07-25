require 'pp'
require 'rails_helper'

RSpec.describe User, :type => :model do
  before :each do
    @user = build(:user)
  end

  it 'should pass validation' do
    expect(@user).to be_valid
  end

  it 'should save when valid' do
    expect(@user.save).to be true
  end

  it 'should have a name' do
    no_name_user = build :user, name: nil
    expect(no_name_user).not_to be true
  end

  it 'should have a not-empty name' do
    no_name_user = build :user, name: ''
    expect(no_name_user).not_to be_valid
  end

  it 'not valid w/o email' do
    expect(build(:user, :no_email)).not_to be_valid
  end

  it 'not valid with bad email' do
    expect(build(:user, :bad_email)).not_to be_valid
  end

  context 'admin user record' do
    # Assuming RSpec configuration preloads seed records
    it 'should exist and be single' do
      admin = User.where(name: ENV['ADMIN_NAME'])
      expect(admin).to be
      expect(admin.count).to be 1
    end
  end
end
