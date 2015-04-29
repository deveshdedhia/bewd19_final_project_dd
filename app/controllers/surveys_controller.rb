class SurveysController < ApplicationController
	
	def index
		@surveys = Survey.all
	end

	def create
		@survey = Survey.new(survey_params)
		choice_list_to_choices
		if @survey.save
			redirect_to surveys_path
		else
			@error = "Failed to Create Survey"
			redirect_to new
		end
	end

	def edit
		@survey = Survey.find(params[:id])
		@question_types = [['Textbox', 'textbox'], ['Checkbox', 'checkbox'],['Dropdown','dropdown']]
	end

	def update
		@survey = Survey.find(params[:id])
		if @survey != nil
			if(@survey.update(survey_params))
				redirect_to surveys_path
			else
				redirect_to edit_survey_path(@survey)
			end
		end
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

	def choice_list_to_choices 
		@survey.questions.each do |q|
			if q.choice_list.to_s != ''
				choice_options = q.choice_list.split(',')
				choice_options.each do |choice_text|
					q.choices.build(choice_text: choice_text.strip)
				end
			end
		end
	end
end
