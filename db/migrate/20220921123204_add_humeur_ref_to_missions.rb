class AddHumeurRefToMissions < ActiveRecord::Migration[6.1]
  def change
    add_reference :missions, :humeur, null: false, foreign_key: true
  end
end
