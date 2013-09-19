class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.integer :artist_id, null: false
      t.date :date_created
      t.date :date_on_sale
      t.decimal :sale_price, null: false
      t.integer :category_id, null: false
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
