class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :bio
      t.string :photo
      t.string :trip_type

      t.timestamps
    end
  end
end
