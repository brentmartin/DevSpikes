class Evaluation < ActiveRecord::Base
  belongs_to :question
  belongs_to :survey

  validates :question_id, presence: true
end
