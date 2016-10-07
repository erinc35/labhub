class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  has_one :user, through: :experiments

  before_save :assign_user_id

  private

  def assign_user_id
  	self.user_id = session[:user_id]
  end
end
