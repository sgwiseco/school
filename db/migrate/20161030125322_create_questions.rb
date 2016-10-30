class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.string :subject
      t.string :topic
      t.string :grade
      t.string :type_of_question
      t.string :image
      t.string :school
      t.string :owner
      t.references :user, index: true

      t.timestamps
    end
  end
end
