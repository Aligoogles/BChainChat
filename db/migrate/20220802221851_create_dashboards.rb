class CreateDashboards < ActiveRecord::Migration[7.0]
  def change
    create_table :dashboards do |t|
      t.string :name
      t.boolean :is_private, default: false

      t.timestamps
    end
  end
end
