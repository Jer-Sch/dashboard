class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :default_status
      t.string :link
      t.timestamps
    end
  end
end
