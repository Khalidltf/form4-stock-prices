class CreateComapnies < ActiveRecord::Migration[7.0]
  def change
    create_table :comapnies do |t|
      t.string :cik, null: false
      t.string :name
      t.string :ticker
      t.json :prices

      t.timestamps
    end
    add_index :comapnies, :cik, unique: true
  end
end
