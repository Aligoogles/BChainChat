class AddScreenNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :screen_name, :string
  end
end
