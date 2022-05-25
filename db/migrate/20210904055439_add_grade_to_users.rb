# frozen_string_literal: true

class AddGradeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :grade, :string
  end
end
