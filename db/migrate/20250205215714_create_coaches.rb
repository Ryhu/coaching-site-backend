class CreateCoaches < ActiveRecord::Migration[8.0]
  def change
    create_table :coaches do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.text :introduction
      t.text :title
      t.integer :phone, null: false

      t.timestamps
    end
  end
end
