class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_projects, :proj_id, :project_id
  end
end
