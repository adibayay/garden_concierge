# == Schema Information
#
# Table name: plants
#
#  id             :integer          not null, primary key
#  grow_tip       :string
#  height         :string
#  image_url      :string
#  maturity       :string
#  name           :string
#  plant_type     :string
#  planting_depth :string
#  spacing        :string
#  sun_exposure   :string
#  video_url      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Plant < ApplicationRecord
  validates :plant_type, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :image_url, presence: true
  
  has_one   :grow_date, dependent: :destroy
  has_many  :gardens, dependent: :destroy
  has_many  :companions, dependent: :destroy
end
