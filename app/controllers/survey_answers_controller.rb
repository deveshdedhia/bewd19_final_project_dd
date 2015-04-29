class SurveyAnswersController < ApplicationController
	
	def create
		@survey_answer = SurveyAnswer.new(survey_answer_params)

		if @survey_answer.save
			redirect_to @survey_answer
		else
			@error = "Failed to Create Survey"
			redirect_to new
		end
	end

	def new 
		@survey = Survey.find(params[:survey_id])
		@survey_answer = @survey.survey_answers.build
		@survey.questions.each do |question|
			@answer = @survey_answer.answers.build(question_id:question.id)
		end
	end 

	def show
		render plain: "Thanks for answering the survey"
	end

	private
	def survey_answer_params
		params[:survey_answer][:answers_attributes].each do |arr| 
			if arr.second.has_key?("choice_array")
				arr.second.merge!({"answer_text"=>arr.second["choice_array"].join(",")})
				arr.second.delete("choice_array")
			end
		end
		params.require(:survey_answer).permit!
	end
end
