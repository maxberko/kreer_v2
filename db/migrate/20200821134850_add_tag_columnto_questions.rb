class AddTagColumntoQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :tag, :string
  end
end
