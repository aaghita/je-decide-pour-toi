class AddVideoToAction < ActiveRecord::Migration[6.1]
  def change
    add_column :actions, :video, :string
  end
end
