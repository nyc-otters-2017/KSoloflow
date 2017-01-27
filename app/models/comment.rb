class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates :content, :user_id, :commentable_id, :commentable_type, presence: true
end
