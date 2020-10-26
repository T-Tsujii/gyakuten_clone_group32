class User < ApplicationRecord
  has_many :viewings, dependent: :destroy
  has_many :viewed_movies, through: :viewings, source: :movie
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

end