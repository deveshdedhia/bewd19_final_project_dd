class SurveyAnswer < ActiveRecord::Base
	has_many :answers
	belongs_to :survery
end
