class CreateBucketlists < ActiveRecord::Migration[6.0]
  def change
    create_table :bucketlists do |t|
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
