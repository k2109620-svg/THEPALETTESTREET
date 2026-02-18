class AddFieldsToLives < ActiveRecord::Migration[7.2]
  def change
    add_column :lives, :place, :string
    add_column :lives, :description, :text
  end
end
