class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :nickname
      t.string :email
      t.string :password
    end
    create_table :projects do |t|
      t.string :proj_name
      t.string :proj_url
    end
    create_table :user_projects do |t|
      t.integer :user_id
      t.integer :proj_id
    end
  end
end
