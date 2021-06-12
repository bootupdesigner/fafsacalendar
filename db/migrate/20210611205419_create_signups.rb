class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.string :full_name
      t.boolean :attending
      t.references :user, null: false, foreign_key: true
      t.references :seminar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
