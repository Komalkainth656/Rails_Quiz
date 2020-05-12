class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :twitter
      t.text :tweet

      t.timestamps
    end
  end
end
