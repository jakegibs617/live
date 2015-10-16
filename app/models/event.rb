class Event < ActiveRecord::Base
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :image_url, presence: true
  validates :user, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true

  belongs_to :user
  has_many :comments

  has_many :eventusers
  has_many :users, through: :eventusers

  belongs_to :owner, class_name: "User"

  def votes_order
    comments.sort_by { |comment| comment.rating }.reverse!
  end

  def self.search(search)
    where('title ILIKE ?', "%#{search}%") |
      where('description ILIKE ?', "%#{search}%")
  end
end
