class AddVideoToMission < ActiveRecord::Migration[6.1]
  def change
    add_column :missions, :video, :string
  end
end
