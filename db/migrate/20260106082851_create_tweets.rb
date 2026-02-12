class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :songtitle
      t.string :jacket
      t.text :lyrics

      t.timestamps
    end
  end
end
