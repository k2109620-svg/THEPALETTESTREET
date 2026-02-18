class CreateLives < ActiveRecord::Migration[7.2]
  def change
    create_table :lives do |t|
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
