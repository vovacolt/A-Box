class DelFalseRefAddUsualRefs < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_projects, :project_id
    remove_column :user_projects, :user_id

    add_reference :user_projects, :users
    add_reference :user_projects, :projects
  end
end
