class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true

  validates :user_id, :votable_id, :votable_type
  validates :user_id, uniqueness: {scope: [:votable_id, :votable_type]}
end
