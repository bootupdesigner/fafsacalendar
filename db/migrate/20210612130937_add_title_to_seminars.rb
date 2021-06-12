class AddTitleToSeminars < ActiveRecord::Migration[6.1]
  def change
    add_column :seminars, :title, :string
  end
end
