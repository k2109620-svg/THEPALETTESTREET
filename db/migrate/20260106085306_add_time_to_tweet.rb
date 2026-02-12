class AddTimeToTweet < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :time, :string
  end
end
