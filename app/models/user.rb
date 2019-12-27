class UserInputValidator < ActiveModel::Validator
  def validate(record)
    if !(record.email.match(/\A[\w\.]+@\w+\.\w+\z/))
      record.errors[:base] << "email is incorrect"
    end
  end
end
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
   #      :recoverable, :rememberable, :validatable
  devise :database_authenticatable
  validates :first_name, :nickname, :email, :encrypted_password, presence: true
  validates_with UserInputValidator
  before_validation :nickname_exists

  def nickname_exists
    if nickname.nil?
      self.nickname = first_name
    end
  end

  has_many :user_projects
  has_many :projects, through: :user_projects
end

