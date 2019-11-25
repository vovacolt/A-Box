class User < ApplicationRecord
has_many :projects, through: :user_projects
end

