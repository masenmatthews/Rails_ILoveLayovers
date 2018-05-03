class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :body, :string
    end
  end
end
