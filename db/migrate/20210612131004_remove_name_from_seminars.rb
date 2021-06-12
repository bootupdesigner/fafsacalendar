class RemoveNameFromSeminars < ActiveRecord::Migration[6.1]
  def change
    remove_column :seminars, :name, :string
  end
end
