class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :orderitems do |t|
      t.column :order_id, :string
      t.column :product_id, :integer
      t.column :flight_id, :integer
    end
  end
end
