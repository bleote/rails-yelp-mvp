class Restaurant < ApplicationRecord
  CATEGORY = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :category, presence: true

  has_many :reviews, dependent: :destroy
end
