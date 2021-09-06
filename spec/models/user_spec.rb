require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  context "has a validation that" do

    it "is valid with an email, password, password_confirmation, name" do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end

    it "is invalid without an email" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without password" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without name" do
      user = FactoryBot.build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it "is invalid with a duplicated email" do
      FactoryBot.create(:user, email: "test@example.com")
      user = FactoryBot.build(:user, email: "test@example.com")
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")
    end

  end
end
