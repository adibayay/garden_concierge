# == Schema Information
#
# Table name: companions
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  companion_id :integer
#  plant_id     :integer
#
class Companion < ApplicationRecord
  belongs_to :plant
end
