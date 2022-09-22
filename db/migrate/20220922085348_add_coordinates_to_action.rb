class AddCoordinatesToAction < ActiveRecord::Migration[6.1]
  def change
    add_column :actions, :latitude, :float
    add_column :actions, :longitude, :float
  end
end
