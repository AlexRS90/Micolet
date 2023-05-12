class Newsletter < ApplicationRecord
  validates :email, uniqueness: { message: 'Sorry, this mail is already in our database.' }
  validates :email, presence: { message: 'Please add your email.' }
  validates :fashion_interest, presence: { message: 'Please select at least one fashion option.' }

  FASHION_INTEREST = ["Women's Fashion", "Men's Fashion", "Children's Fashion"]
end
