class Car < ApplicationRecord
  serialize :exterior, Array, coder: JSON
  serialize :safety_systems, Array, coder: JSON
  serialize :airbags, Array, coder: JSON
  serialize :interior, Array, coder: JSON
  serialize :comfort, Array, coder: JSON
  serialize :heating, Array, coder: JSON
  serialize :climate, Array, coder: JSON
  serialize :multimedia, Array, coder: JSON
  serialize :headlights, Array, coder: JSON

  has_one_attached :image

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :leasing_price, presence: true, numericality: { greater_than: 0 }
  validates :color, presence: true
  validates :year, presence: true, numericality: { greater_than: 1900 }
  validates :transmission_type, presence: true
  validates :engine_type, presence: true
  validates :exterior, presence: true
  validates :safety_systems, presence: true
  validates :airbags, presence: true
  validates :interior, presence: true
  validates :comfort, presence: true
  validates :heating, presence: true
  validates :climate, presence: true
  validates :multimedia, presence: true
  validates :headlights, presence: true
  validates :body_type, presence: true
  validates :engine_capacity, presence: true, numericality: { greater_than: 0 }
  validates :engine_power, presence: true, numericality: { greater_than: 0 }
  validates :drivetrain, presence: true
  validates :city, presence: true

  scope :new_cars, -> { where(category: 'NEW') }
  scope :pre_owned_cars, -> { where(category: 'PRE-OWNED') }
end
