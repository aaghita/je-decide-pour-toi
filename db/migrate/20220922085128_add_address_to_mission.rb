class AddAddressToMission < ActiveRecord::Migration[6.1]
  def change
    add_column :missions, :address, :string
  end
end
