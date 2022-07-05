class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :user
      t.date :post_date
      t.text :comment

      t.timestamps
    end
  end
end