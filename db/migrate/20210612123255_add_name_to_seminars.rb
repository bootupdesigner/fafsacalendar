class AddNameToSeminars < ActiveRecord::Migration[6.1]
  def change
    add_column :seminars, :name, :string
  end
end
