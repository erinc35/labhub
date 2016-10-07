class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.string :type
      t.references :experiment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
