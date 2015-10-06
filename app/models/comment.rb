class Comment < ActiveRecord::Base
  RATINGS = [1, 2, 3, 4, 5]

  validates :body, presence: true
  validates :rating, presence: true

  validates :user_id, presence: true
  validates :event_id, presence: true
  belongs_to :user
  belongs_to :event
end
