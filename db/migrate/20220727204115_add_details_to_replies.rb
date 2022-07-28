class AddDetailsToReplies < ActiveRecord::Migration[7.0]
  def change
    add_column :replies, :user, :string
    add_column :replies, :content, :text
  end
end
