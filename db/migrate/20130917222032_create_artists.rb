class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.integer :phone
      t.string :birthplace
      t.string :art_style

      t.timestamps
    end
  end
end
