class Movie < ApplicationRecord
  has_many :viewings, dependent: :destroy
  has_many :viewed_movies, through: :viewings, source: :user

  validates :title, presence: true
  validates :url, presence: true

  def viewed_by?(user)
    viewings.find_by(user_id: user.id).present?
  end
end