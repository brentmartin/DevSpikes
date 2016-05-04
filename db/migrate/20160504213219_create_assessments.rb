class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :title
      t.string :description
      t.string :question
      t.float :answer

      t.timestamps null: false
    end
  end
end
