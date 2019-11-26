class User_Project < ApplicationRecord
  validates :user_id, :project_id, presence: true
end
