class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :message
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :assessment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
