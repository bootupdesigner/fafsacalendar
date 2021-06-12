class CreateCounselings < ActiveRecord::Migration[6.1]
  def change
    create_table :counselings do |t|
      t.string :name
      t.boolean :attending
      t.text :reason
      t.references :user, null: false, foreign_key: true
      t.references :meeting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
