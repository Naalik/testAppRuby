class Microposts2 < ApplicationRecord
  belongs_to:user
  validates :message, length:{maximum: 140}
end
