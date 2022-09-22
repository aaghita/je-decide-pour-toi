class Action < ApplicationRecord
  belongs_to :humeur

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
end
