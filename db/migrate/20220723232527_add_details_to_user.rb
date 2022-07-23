class AddDetailsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :phone_number, :integer
    add_column :users, :country, :string
    add_column :users, :profession, :string
    add_column :users, :interest, :text
    add_column :users, :bio, :text
  end
end
