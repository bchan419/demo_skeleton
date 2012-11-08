class CreateExpertises < ActiveRecord::Migration
  def change
    create_table :expertises do |t|
      t.string :tags

      t.timestamps
    end
  end
end
