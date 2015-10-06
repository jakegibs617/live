class Event < ActiveRecord::Base
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :image_url, presence: true
  validates :user, presence: true

  belongs_to :user
  has_many :comments

  def votes_order
    comments.sort_by { |comment| comment.body }
  end
end
