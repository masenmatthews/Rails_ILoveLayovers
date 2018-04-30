class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
       t.column :accountname, :string
       t.column :email, :string
       t.column :admin, :boolean, :default => false
       t.column :password_hash, :string
       t.column :password_salt, :string
   end

   def up
     add_attachment :accounts, :avatar
   end

   def down
     remove_attachment :accounts, :avatar
    end
  end
end
