class Comment < ActiveRecord::Base
  RATINGS = [1, 2, 3, 4, 5]
  belongs_to :user
  belongs_to :event

  validates :rating, presence: true
  validates :body, presence: true

  validates :user_id, presence: true
  validates :event_id, presence: true
end
