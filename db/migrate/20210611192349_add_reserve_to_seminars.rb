class AddReserveToSeminars < ActiveRecord::Migration[6.1]
  def change
    add_column :seminars, :attending, :boolean
    add_column :seminars, :not_attending, :boolean
  end
end
