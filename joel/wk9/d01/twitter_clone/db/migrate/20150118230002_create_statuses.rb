class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :content
      t.string :username

      t.timestamps null: false
    end
  end
end
