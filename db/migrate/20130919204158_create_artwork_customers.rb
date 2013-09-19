class CreateArtworkCustomers < ActiveRecord::Migration
  def change
    create_table :artwork_customers do |t|
      t.integer :artwork_id, null: false
      t.integer :customer_id, null: false

      t.timestamps
    end
  end
end
