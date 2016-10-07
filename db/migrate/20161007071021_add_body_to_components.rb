class AddBodyToComponents < ActiveRecord::Migration[5.0]
  def change
    add_column :components, :body, :text
  end
end
