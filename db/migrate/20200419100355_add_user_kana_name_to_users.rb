class AddUserKanaNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_kana_name, :string
  end
end
