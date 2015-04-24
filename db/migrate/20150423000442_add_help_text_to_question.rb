class AddHelpTextToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :help_text, :string
  end
end
