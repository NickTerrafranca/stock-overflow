class Answer < ActiveRecord::Base
  belongs_to :question
  validates :description, presence: true
  validates :question_id, presence: true
  validates_length_of :description, :minimum => 50, :message => "Title must be more than %d characters long."
end
