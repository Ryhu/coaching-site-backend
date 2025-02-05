class CreateCoaches < ActiveRecord::Migration[8.0]
  def change
    create_table :coaches do |t|
      t.timestamps
    end
  end
end
