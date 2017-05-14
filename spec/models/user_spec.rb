require 'rails_helper'

RSpec.describe User, type: :model do
  it "has the username set correctly" do
    user = User.new username:"Pekka"

    user.username.should == "Pekka"
  end

  it "is not saved without a password" do
    user = User.create username:"Pekka"

    expect(user).not_to be_valid
    expect(User.count).to eq(0)
  end

  it "creates plantlibrary to user" do
  	user = User.create username:"Pekka", password:"Secret1", password_confirmation:"Secret1"
  	expect(user.plantlibrary.name).to eq("My plantlibrary")

  end
end
