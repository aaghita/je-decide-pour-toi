class AddLinkToMission < ActiveRecord::Migration[6.1]
  def change
    add_column :missions, :link, :string
  end
end
