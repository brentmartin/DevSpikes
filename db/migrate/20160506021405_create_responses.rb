class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.float :answer
      t.boolean :completion
      t.belongs_to :question, index: true, foreign_key: true
      t.belongs_to :participant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
