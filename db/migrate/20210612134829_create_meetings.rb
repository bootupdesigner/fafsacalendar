class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
