class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :author_name, presence: true,
                          length: { minimum: 3, maximum: 15 }
  validates :body, presence: true,
                   uniqueness: true
end
