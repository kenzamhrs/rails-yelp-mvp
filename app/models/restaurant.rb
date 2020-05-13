class Restaurant < ApplicationRecord
  CATEGORIES = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  # validates :phone_number, format: {with: /\A(0|\+\d\d|00\d\d)\d{9}\z/}
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
