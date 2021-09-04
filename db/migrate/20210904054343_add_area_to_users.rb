class AddAreaToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :climbing_area, :string
  end
end
