class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  has_one :user, through: :experiments

  # before_save :assign_params

  # private

  # def assign_params
  # 	self.commentable_type = params[:commentable_type]
  # 	sel.commentable_id = params[:id]
  # end
end
