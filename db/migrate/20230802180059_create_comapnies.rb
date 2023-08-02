class CreateComapnies < ActiveRecord::Migration[7.0]
  def change
    create_table :comapnies do |t|
      t.string :cik
      t.string :name
      t.string :ticker
      t.json :prices

      t.timestamps
    end
  end
end
