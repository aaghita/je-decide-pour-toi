class AddColomnToMissions < ActiveRecord::Migration[6.1]
  def change
    add_column :missions, :title, :string
  end
end
