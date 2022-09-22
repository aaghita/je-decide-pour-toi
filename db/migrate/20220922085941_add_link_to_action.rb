class AddLinkToAction < ActiveRecord::Migration[6.1]
  def change
    add_column :actions, :link, :string
  end
end
