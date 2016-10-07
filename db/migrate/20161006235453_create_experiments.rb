class CreateExperiments < ActiveRecord::Migration[5.0]
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :body
      t.references :proposal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
