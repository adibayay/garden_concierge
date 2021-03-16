# == Schema Information
#
# Table name: plants
#
#  id           :integer          not null, primary key
#  description  :string
#  difficulty   :string
#  diseases     :string
#  feeding      :string
#  growing      :string
#  harvest      :string
#  image_url    :string
#  name         :string
#  other_care   :string
#  pests        :string
#  plant_type   :string
#  spacing      :string
#  sun_exposure :string
#  video_url    :string
#  watering     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Plant < ApplicationRecord
  has_one   :grow_date, dependent: :destroy
  has_many  :gardens, dependent: :destroy
  has_many  :companions, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :image_url, presence: true
end
