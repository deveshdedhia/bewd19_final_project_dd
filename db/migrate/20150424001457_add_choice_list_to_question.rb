class AddChoiceListToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :choice_list, :string
  end
end
