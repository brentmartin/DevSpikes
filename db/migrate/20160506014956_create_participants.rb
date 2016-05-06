class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :relation
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
