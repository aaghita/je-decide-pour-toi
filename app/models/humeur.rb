class Humeur < ApplicationRecord
  has_many :actions, dependent: :destroy
end
