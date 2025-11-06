class Turner < ApplicationRecord
  belongs_to :slot, dependent: :destroy
  has_many :options

  validates :name, presence: true
end
