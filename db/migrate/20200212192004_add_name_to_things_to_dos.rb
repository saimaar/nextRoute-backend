class AddNameToThingsToDos < ActiveRecord::Migration[6.0]
  def change
    add_column :things_to_dos, :name, :string
  end
end
