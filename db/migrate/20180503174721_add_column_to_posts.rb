class AddColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :account_id, :integer

  end
end
