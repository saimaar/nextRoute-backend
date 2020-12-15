class CreateAddJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :add_joiners do |t|
      t.belongs_to :bucketlist, null: false, foreign_key: true
      t.belongs_to :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
