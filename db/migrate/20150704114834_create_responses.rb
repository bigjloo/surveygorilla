class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :survey_id, :user_id, :question_id, :choice_id
      t.timestamps null: false
    end
  end
end
