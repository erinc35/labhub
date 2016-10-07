class Proposal < ApplicationRecord
  belongs_to :user
  has_many :experiments
  has_many :comments, as: :commentable
  has_many :approvals

  before_destroy :destroy_children

  private

  def destroy_children
  	self.approvals.destroy_all
  	self.comments.destroy_all
  	self.experiments.destroy_all
  end


end
