class Answer < ApplicationRecord
  belongs_to :question

  validates :content, :user_id, :post_id, presence: true
end
