class CreateQuestionAccesses < ActiveRecord::Migration[6.1]
  def change
    create_table :question_accesses do |t|
      t.belongs_to :questions, foreign_key: true
      t.timestamp :date
      t.integer :times_accessed

      t.timestamps
    end
  end
end
