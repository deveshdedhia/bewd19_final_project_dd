class Survey < ActiveRecord::Base
	has_many :questions, :dependent => :destroy
	has_many :survey_answers, :dependent => :destroy
	accepts_nested_attributes_for :questions, :allow_destroy => true
end
