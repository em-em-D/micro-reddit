class Post < ApplicationRecord
    validates :title, presence: true, length: {minimum: 20, maximum: 200}
	validates :content, presence: true, length: {minimum: 100}
	
	
	belongs_to :user
	has_many :comments
end
