class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :passowrd, presence: true
end
