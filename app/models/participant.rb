class Participant < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey

  validates :question_id, presence: true
end
