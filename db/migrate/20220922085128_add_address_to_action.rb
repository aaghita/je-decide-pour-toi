class AddAddressToAction < ActiveRecord::Migration[6.1]
  def change
    add_column :actions, :address, :string
  end
end
