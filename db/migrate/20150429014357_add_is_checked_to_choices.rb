class AddIsCheckedToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :is_checked, :boolean
  end
end
