class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :body
      t.boolean :read, null: false, default: false

      t.timestamps
    end
  end
end
