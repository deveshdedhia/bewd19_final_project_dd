class FixColumnNameSurvey < ActiveRecord::Migration
  def change
  	rename_column :surveys, :survery_name, :survey_name
  end
end
