class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.datetime :begin_time
      t.datetime :due_time
      t.string :priority
      t.string :status

      t.timestamps
    end
  end
end
