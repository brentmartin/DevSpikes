class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :participant

  validates :question_id, presence: true
end
