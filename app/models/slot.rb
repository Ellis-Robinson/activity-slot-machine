class Slot < ApplicationRecord
  has_many :turners

  validates :name, presence: true
end
