class Question < ApplicationRecord
  has_many :answers

  validates :user_id, :title, :content, presence: true
end
