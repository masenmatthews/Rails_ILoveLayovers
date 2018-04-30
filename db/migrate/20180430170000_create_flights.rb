class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.column :origin, :string
      t.column :destination, :string
      t.column :price, :integer
      t.column :destination, :string
    end
  end
end
