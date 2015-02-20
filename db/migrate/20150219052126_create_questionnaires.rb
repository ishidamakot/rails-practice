class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.text :title
      t.text :description

      t.timestamps null: false
    end
  end
end
