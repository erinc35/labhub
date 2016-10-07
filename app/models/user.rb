require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  has_many :proposals
  has_many :experiments, through: proposals
  has_many :collaborations

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
  	user = User.find_by(email: email)
    return nil if user == nil

  	if user.password == password
  	  return user
  	else
  	  return nil
    end
  end
end
