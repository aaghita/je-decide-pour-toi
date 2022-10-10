class AddReferenceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :rendez_vou, foreign_key: true
  end
end
