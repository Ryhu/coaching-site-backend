class CreateLessons < ActiveRecord::Migration[8.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.text :notes
      t.integer :score
      t.integer :coach_id, null: false
      t.integer :student_id
      t.string :date
      t.integer :time

      t.timestamps
    end
  end
end
