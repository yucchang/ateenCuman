class ChangePirorityStatusToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :priority, :integer, using: 'priority::integer'  
    change_column :tasks, :status, :integer, using: 'status::integer', default: 0
  end
end
