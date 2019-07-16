class Comment < ApplicationRecord
    validates :content, presence: true, length: { minimum: 10, maximum: 100 }
    validates :user_id, presence: true
    validates :post_id, presence: true
  
    belongs_to :post
    belongs_to :user
end
