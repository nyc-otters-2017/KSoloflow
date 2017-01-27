class Answer < ApplicationRecord
  belongs_to :question
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :content, :user_id, :post_id, presence: true
end
