class AddSurveyAnswerIdToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :survery_answer_id, :integer
  end
end
