class Question < ApplicationRecord
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  
  validates :user_id, :title, :content, presence: true
end
