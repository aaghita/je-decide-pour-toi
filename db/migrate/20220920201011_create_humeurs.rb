class CreateHumeurs < ActiveRecord::Migration[6.1]
  def change
    create_table :humeurs do |t|
      t.string :name

      t.timestamps
    end
  end
end
