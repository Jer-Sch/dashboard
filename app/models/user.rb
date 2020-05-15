class User < ApplicationRecord
    has_many :user_applications
    has_many :applications, through: :user_applications
    validates :login, presence: true
    validates :password, presence: true
end
