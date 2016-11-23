class User < ApplicationRecord
  has_many:microposts2s
  validates :name, presence:true
  validates :email, presence:true
end
