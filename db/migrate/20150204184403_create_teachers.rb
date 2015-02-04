class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :email
      t.string :name
      t.string :password_hash
      t.string :password_salt

      t.timestamps null: false
    end
  end
end
