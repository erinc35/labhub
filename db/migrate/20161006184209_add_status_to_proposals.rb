class AddStatusToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :status, :string, :default => "pending"
  end
end
