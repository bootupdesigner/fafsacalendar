class AddInfoToSeminars < ActiveRecord::Migration[6.1]
  def change
    add_column :seminars, :description, :text
    add_column :seminars, :image, :string
  end
end
