# == Schema Information
#
# Table name: gardens
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plant_id   :integer
#  user_id    :integer
#
class Garden < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_one  :calendar, through: :plant, source: :grow_date
end
