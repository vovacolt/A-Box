class AddTimestamps < ActiveRecord::Migration[6.0]
  def change
    change_table :user_projects do |t|
      t.timestamps
    end
  end
end
