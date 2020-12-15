class CreateThingsToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :things_to_dos do |t|
      t.string :bio
      t.string :photo
      t.belongs_to :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
