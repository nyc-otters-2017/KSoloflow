class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  validates :content, :user_id, :commentable_id, :commentable_type, presence: true
end
