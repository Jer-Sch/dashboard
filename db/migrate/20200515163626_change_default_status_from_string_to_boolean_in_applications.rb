class ChangeDefaultStatusFromStringToBooleanInApplications < ActiveRecord::Migration[6.0]
  def change
    change_column :applications, :default_status, 'boolean USING CAST(default_status AS boolean)'
  end
end
