class Experiment < ApplicationRecord
  belongs_to :proposal
  belongs_to :user
  has_many :collaborations
  has_many :users, through: :collaborations
  has_many :comments, as: :commentable
  has_many :components
end
