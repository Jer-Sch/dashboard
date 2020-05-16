class UserApplication < ApplicationRecord
    belongs_to :user
    belongs_to :application
    validates_uniqueness_of :application_id, :scope => :user_id
end
