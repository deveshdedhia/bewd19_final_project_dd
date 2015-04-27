class SurveysController < ApplicationController
	
	def index
		@surveys = Survey.all
	end

	def create
		@survey = Survey.new(survey_params)
		@survey.questions.each do |q|
			if q.choice_list.to_s != ''
				choice_options = q.choice_list.split(',')
				choice_options.each do |choice_text|
					q.choices.append(Choice.new(choice_text: choice_text.strip))
				end
			end
		end
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
		@question_types = [['Textbox', 'textbox'], ['Checkbox', 'checkbox'],['Dropdown','dropdown']]
		3.times { @survey.questions.build}
	end

	private
	def survey_params
		params.require(:survey).permit!
	end
end
