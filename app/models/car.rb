class Car < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :leasing_price, presence: true, numericality: { greater_than: 0 }
end
