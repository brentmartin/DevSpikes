class Participant < ActiveRecord::Base
  has_many :responses
  has_many :questions, through: :assessments

  accepts_nested_attributes_for :responses

  belongs_to :user
  belongs_to :survey
end
