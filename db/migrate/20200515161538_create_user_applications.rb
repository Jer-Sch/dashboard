class CreateUserApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :user_applications do |t|
      t.belongs_to :user
      t.belongs_to :application
      t.timestamps
    end
  end
end
