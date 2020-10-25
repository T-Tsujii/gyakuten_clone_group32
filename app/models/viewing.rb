class Viewing < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :user_id, uniqueness: {scope: :view_id}
end
