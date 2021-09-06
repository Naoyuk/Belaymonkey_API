require 'rails_helper'

RSpec.describe Post, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:post)).to be_valid
  end

  context "has a validation that" do

    it "is valid with a user_id, date, start_time, end_time and kind_of_climbing." do
      post = FactoryBot.build(:post)
      expect(post).to be_valid
    end

    it "is invalid without a date." do
      post = FactoryBot.build(:post, date: nil)
      post.valid?
      expect(post.errors[:date]).to include("can't be blank")
    end

  end
end
