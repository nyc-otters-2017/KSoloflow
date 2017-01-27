class Answer < ApplicationRecord
  belongs_to :question
  has_many :comments, as: :commentable

  validates :content, :user_id, :post_id, presence: true
end
