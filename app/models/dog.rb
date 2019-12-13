class Dog < ApplicationRecord
  has_many :alerts
  belongs_to :user
end
