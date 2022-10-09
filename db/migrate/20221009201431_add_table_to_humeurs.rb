class AddTableToHumeurs < ActiveRecord::Migration[6.1]
  def change
    add_column :humeurs, :color, :string
    add_column :humeurs, :icon, :string
  end
end
