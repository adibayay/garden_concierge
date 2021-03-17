# == Schema Information
#
# Table name: grow_dates
#
#  id            :integer          not null, primary key
#  early_indoor  :integer
#  early_outdoor :integer
#  late_indoor   :integer
#  late_outdoor  :integer
#  outdoor_only  :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  plant_id      :integer
#
class GrowDate < ApplicationRecord
  belongs_to :plant
  has_one  :garden, through: :plant, source: :gardens
  has_one  :user, through: :garden, source: :user
end
