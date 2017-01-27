class Question < ApplicationRecord
  validates :user_id, :title, :content, presence: true
end
