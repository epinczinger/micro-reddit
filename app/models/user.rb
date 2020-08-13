class User < ApplicationRecord

    has_many :posts
    
    validates :name, presence: true, uniqueness: true,length: { minimum: 3 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
