class AddPositionToApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :position, :integer
  end
end
