class Experiment < ApplicationRecord
  belongs_to :proposal
  # delegate :user, to: :proposal
  has_one :user, through: :proposal
  has_many :collaborations
  has_many :users, through: :collaborations
  has_many :comments, as: :commentable
  has_many :components
  before_save :assign_user_id
  before_destroy :destroy_children

  

  private

  def assign_user_id
    self.user_id = Proposal.find(self.proposal_id).user_id
  end

  def destroy_children
    self.comments.destroy_all
    self.components.destroy_all
  end
end
