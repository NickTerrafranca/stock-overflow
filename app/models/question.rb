class Question < ActiveRecord::Base
  has_many :answers
  validates :title, presence: true
  validates :description, presence: true
  validates_length_of :title, :minimum => 40, :message => "Title must be more than %d characters long."
  validates_length_of :description, :minimum => 150, :message => "Title must be more than %d characters long."
end
