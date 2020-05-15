class UserApplication < ApplicationRecord
    belongs_to :user
    belongs_to :application
end
