class CreateRendezVous < ActiveRecord::Migration[6.1]
  def change
    create_table :rendez_vous do |t|
      t.timestamps
    end
  end
end
