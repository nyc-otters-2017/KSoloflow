class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true
  belongs_to :user

  validates :user_id, :votable_id, :votable_type, presence: true 
  validates :user_id, uniqueness: {scope: [:votable_id, :votable_type]}
end
