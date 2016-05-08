class Survey < ActiveRecord::Base
  has_many :evaluations
  has_many :participants
  has_many :responses, through: :participants
  has_many :questions, through: :assessments

  belongs_to :user
  belongs_to :assessment
end
