class Garden < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_one  :calendar, through: :plant, source: :grow_date
end
