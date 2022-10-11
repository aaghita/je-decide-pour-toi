class Humeur < ApplicationRecord
  has_many :missions, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
