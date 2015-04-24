class SurveysController < ApplicationController
	
	def index
		@surveys = Survey.all
	end

	def create
		@survey = Survey.new(survey_params)
		if @survey.save
			redirect_to @survey
		else
			@error = "Failed to Create Survey"
			redirect_to new
		end
	end

	def show
		@survey = Survey.find(params[:id])
	end

	def new
		@survey = Survey.new
		3.times { @survey.questions.build}
	end

	private
	def survey_params
		params.require(:survey).permit(:survey_name,:questions)
	end
end
