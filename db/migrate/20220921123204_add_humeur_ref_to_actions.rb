class AddHumeurRefToActions < ActiveRecord::Migration[6.1]
  def change
    add_reference :actions, :humeur, null: false, foreign_key: true
  end
end
