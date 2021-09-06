class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: {
    male: 0,
    female: 1,
  }

  enum kind_of_climbing: {
    trad: 0,
    sport: 1,
    bouldering: 2,
    multi_pitches: 3,
    alpine: 4,
  }

  has_many :posts

  validates :name, presence: true
end
