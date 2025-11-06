class Option < ApplicationRecord
  has_many :turners

  validates :name, :description, presnece: true
end
