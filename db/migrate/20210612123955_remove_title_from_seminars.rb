class RemoveTitleFromSeminars < ActiveRecord::Migration[6.1]
  def change
    remove_column :seminars, :title, :string
  end
end
