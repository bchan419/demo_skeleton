class CreateSkillsets < ActiveRecord::Migration
  def change
    create_table :skillsets do |t|
      t.integer :user_id
      t.integer :expertise_id

      t.timestamps
    end
  end
end
