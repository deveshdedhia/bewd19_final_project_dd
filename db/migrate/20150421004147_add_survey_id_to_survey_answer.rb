class AddSurveyIdToSurveyAnswer < ActiveRecord::Migration
  def change
    add_column :survey_answers, :survey_id, :integer
  end
end
