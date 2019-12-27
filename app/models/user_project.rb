class UserProject < ApplicationRecord
  #validates :users_id, :projects_id, presence: true
  belongs_to :project, foreign_key: :project_id, optional: true
  belongs_to :user, foreign_key: :user_id, optional: true
end
