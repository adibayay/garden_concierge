class GrowDate < ApplicationRecord
  belongs_to :plant
  has_one  :garden, through: :plant, source: :gardens
end
