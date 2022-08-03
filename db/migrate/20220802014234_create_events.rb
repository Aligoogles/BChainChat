class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.time :time
      t.string :location
      t.integer :limit
      t.integer :attendees
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
