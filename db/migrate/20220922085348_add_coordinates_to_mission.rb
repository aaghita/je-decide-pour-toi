class AddCoordinatesToMission < ActiveRecord::Migration[6.1]
  def change
    add_column :missions, :latitude, :float
    add_column :missions, :longitude, :float
  end
end
