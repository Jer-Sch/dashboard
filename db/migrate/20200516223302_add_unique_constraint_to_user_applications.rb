class AddUniqueConstraintToUserApplications < ActiveRecord::Migration[6.0]
  def change
    remove_index :user_applications, :application_id
    remove_index :user_applications, :user_id
    add_index :user_applications, [:application_id, :user_id], :unique => true
  end
end
