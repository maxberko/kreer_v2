class CreateInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :inputs do |t|
      t.references :users, null: false, foreign_key: true
      t.references :answers, null: false, foreign_key: true
      t.references :tests-questions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
