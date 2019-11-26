class UserProject < ApplicationRecord
  validates :user_id, :project_id, presence: true
end
