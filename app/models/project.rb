class Project < ApplicationRecord
  validates :proj_name, :proj_url, presence: true
  has_many :users, through: :user_projects
end