require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  has_many :proposals

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
  	user = User.find_by(email: email)
  	if user.password == password
  	  return user
  	else
  	  return nil
    end
  end
end
