class DeviseUidAddToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :uid, :string
    add_index :users, :uid, :unique => true
  end
end
