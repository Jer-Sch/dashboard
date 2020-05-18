class Application < ApplicationRecord
    has_many :user_applications
    has_many :users, through: :user_applications
    validates :name, presence: true
    validates :description, presence: true
    validates :color, presence: true
    validates :default_status, :inclusion => [true, false]
    validates :link, presence: true
    acts_as_list
end
