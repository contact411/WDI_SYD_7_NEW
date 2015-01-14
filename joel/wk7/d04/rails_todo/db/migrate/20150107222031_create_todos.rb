class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.text :notes
      t.boolean :completed
      t.date :timestamp

      t.timestamps
    end
  end
end
