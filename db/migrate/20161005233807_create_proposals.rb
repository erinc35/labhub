class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :abstract

      t.timestamps
    end
  end
end
