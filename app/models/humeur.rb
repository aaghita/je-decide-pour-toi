class Humeur < ApplicationRecord
  has_many :missions, dependent: :destroy
  has_many :rendez_vous, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
