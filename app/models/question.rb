class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  validates_length_of :title, :minimum => 40, :message => "Title must be more than 40 characters long."
  validates_length_of :description, :minimum => 150, :message => "Title must be more than 150 characters long."
  validates :title, presence: true
  validates :description, presence: true

end

