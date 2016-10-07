class Collaboration < ApplicationRecord
  belongs_to :user
  belongs_to :experiment
  # before_save :assign_user_id

  # private

  # def assign_user_id
  # 	self.user_id = Experiment.find(self.experiment_id)
  # end
end
