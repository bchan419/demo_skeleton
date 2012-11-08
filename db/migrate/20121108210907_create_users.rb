class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :tsl_class
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
