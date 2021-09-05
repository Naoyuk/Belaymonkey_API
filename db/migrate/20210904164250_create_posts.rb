class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :kind_of_climbing

      t.timestamps
    end
  end
end
