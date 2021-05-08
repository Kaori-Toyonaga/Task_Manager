class ChangeColumnsAddNotnullOnTasks < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :detail, :text, null: false
  end
end
