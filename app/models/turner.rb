class Turner < ApplicationRecord
  belongs_to :slot, dependent: :destroy
  has_many :turner_options
  has_many :options, through: :turner_options

  validates :name, presence: true
end
