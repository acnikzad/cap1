class User < ApplicationRecord
  has_many :alerts
  has_many :dogs
end
