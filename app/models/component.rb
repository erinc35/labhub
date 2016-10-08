class Component < ApplicationRecord
  belongs_to :experiment
  belongs_to :user
  has_many :comments, as: :commentable

  before_destroy :destroy_children

  private

  def destroy_children
  	self.comments.destroy_all
  end
end
