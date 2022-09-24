class AddDoneToMission < ActiveRecord::Migration[6.1]
  def change
    add_column :missions, :done, :boolean, default: false 
  end
end
