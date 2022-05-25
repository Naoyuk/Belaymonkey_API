# frozen_string_literal: true

class AddKindToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :kind_of_climbing, :integer
  end
end
