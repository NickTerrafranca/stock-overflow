class ChangeDescriptionInAnswers < ActiveRecord::Migration
  def up
    rename_column :answers, :description, :answer_body
  end

  def down
    rename_column :answers, :answer_body, :description
  end

end

