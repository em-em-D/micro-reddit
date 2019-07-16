class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 20, minimum: 4}, format: { without: /\s/ }
    validates :email , presence: true
    validates :password , presence: true
    has_many :posts
    has_many :comments
end
