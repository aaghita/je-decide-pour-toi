class AddReferenceToHumeurs < ActiveRecord::Migration[6.1]
  def change
    add_reference :humeurs, :rendez_vou, foreign_key: true
  end
end
