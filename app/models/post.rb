class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, 
               length: {maximum: 10}, 
               uniqueness: true
  validates :body, presence: true,  
               uniqueness: true
end
