# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  last_frost      :date
#  password_digest :string
#  zipcode         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_one   :garden, dependent: :destroy

  validates :zipcode, length: { minimum: 5, maximum: 5 }
  validates :last_frost, presence: true
end
