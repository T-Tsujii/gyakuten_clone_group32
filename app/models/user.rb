class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  # Database authenticable
  validates :email, presence: true
  validates :encrypted_password, presence: true
  
  # Recoverable
  validates :reset_password_token, presence: true
  validates :reset_password_sent_at, presence: true
end
