class Donation < ApplicationRecord
  belongs_to :user
  has_many :tax_receipts
  has_many :soldiers_donations
end
