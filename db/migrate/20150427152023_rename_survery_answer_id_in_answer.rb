class RenameSurveryAnswerIdInAnswer < ActiveRecord::Migration
  def change
    rename_column :answers, :survery_answer_id, :survey_answer_id
  end
end
