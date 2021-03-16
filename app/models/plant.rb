class Plant < ApplicationRecord
  validates :plant_type, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :image_url, presence: true
  
  has_one   :grow_date, dependent: :destroy
  has_many  :gardens, dependent: :destroy
  has_many  :companions, dependent: :destroy
end
