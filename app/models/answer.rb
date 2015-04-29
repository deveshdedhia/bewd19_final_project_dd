class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :survey_answer

	has_many :choices
	accepts_nested_attributes_for :choices
end
