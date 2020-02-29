class RenameBeginTimeAndDueTime < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :begin_time, :beginning_at
    rename_column :tasks, :due_time, :due_at
  end
end
