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
  has_one  :grow_date, through: :plant, source: :grow_date
  has_many  :companions, through: :plant, source: :companions
  validates :user_id, presence: true
  validates :plant_id, presence: true
end
