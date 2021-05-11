class AddLoginToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :login, :user
  end
end
