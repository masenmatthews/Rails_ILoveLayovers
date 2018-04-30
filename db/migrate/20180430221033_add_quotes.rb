class AddQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.column :quote, :string
    end
  end
end
