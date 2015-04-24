class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :choice_text

      t.timestamps null: false
    end
  end
end
