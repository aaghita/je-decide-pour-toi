class RemoveVideoFromMission < ActiveRecord::Migration[6.1]
  def change
    remove_column :missions, :video, :string
  end
end
