class Participant < ActiveRecord::Base
  has_many :responses
  has_many :questions, through: :assessments

  belongs_to :user
  belongs_to :survey
end
