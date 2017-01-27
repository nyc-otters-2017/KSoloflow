class Question < ApplicationRecord
  has_many :answers
  has_many :comments, as: :commentable

  validates :user_id, :title, :content, presence: true
end
