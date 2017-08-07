require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(name:'Victor', email:'aa@aa.com', password:'123456', password_confirmation:'123456')
    expect(user).to be_valid
  end

  it "is not valid with different passwords" do
    user = User.new(name:'Victor', email:'aa@aa.com', password:'123456', password_confirmation:'123457')
    expect(user).to_not be_valid
  end

  it "is not valid with small password" do
    user = User.new(name:'Victor', email:'aa@aa.com', password:'1234', password_confirmation:'1234')
    expect(user).to_not be_valid
  end

  it "is not valid with not repetead email" do
    user1 = User.create(name:'Victor', email:'vmfesta@gmail.com', password:'123456', password_confirmation:'123456')
    user2 = User.create(name:'Victor', email:'vmfesta@gmail.com', password:'123456', password_confirmation:'123456')
    expect(user2).to_not be_valid
  end
end
