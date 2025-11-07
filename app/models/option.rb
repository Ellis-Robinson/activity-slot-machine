class Option < ApplicationRecord
  has_many :turner_options
  has_many :turners, through: :turner_options

  validates :name, :description, presence: true
end
