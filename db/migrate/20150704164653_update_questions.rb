class UpdateQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :text, :string
  end
end
