class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :phone_number, uniqueness: true, presence: true
  validates :category, inclusion: %w(chinese italian japanese french belgian)
end



