class Review < ApplicationRecord
  belongs_to :restaurant, dependant: :destroy
  validates :content, uniqueness: true, presence: true
  validates :rating, inclusion: {in: [0, 1, 2, 3, 4, 5]}
end
