class Answer < ActiveRecord::Base
  belongs_to :question
  validates_length_of :answer_body, :minimum => 50, :message => "Title must be more than 50 characters long."

  validates :answer_body, presence: true
  validates :question_id, presence: true
end
