class UserInputValidator < ActiveModel::Validator
  def validate(record)
    if !(record.email.match(/\A[\w\.]+@\w+\.\w+\z/))
      record.errors[:base] << "email is incorrect"
    end
  end
end
class User < ApplicationRecord
  validates :first_name, :nickname, :email, :password, presence: true
  #validates_with UserInputValidator
  before_validation :nickname_exists

  def nickname_exists
    if nickname.nil?
      self.nickname = first_name
    end
  end

  has_many :projects, through: :user_projects
end

