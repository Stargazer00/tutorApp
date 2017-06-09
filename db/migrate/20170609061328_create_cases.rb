class CreateCases < ActiveRecord::Migration[5.1]
  def change
    create_table :cases do |t|
      t.integer :categories
      t.integer :level_genearl
      t.integer :level_oral
      t.integer :level_music
      t.integer :level_other
      t.integer :subject_general
      t.integer :subject_oral
      t.integer :subject_music
      t.integer :subject_other
      t.integer :no_of_student
      t.integer :freq_of_lesson
      t.string :lesson_time
      t.integer :tuition_fee
      t.integer :tuition_per
      t.integer :min_edu_level
      t.integer :tutor_gender
      t.string :other_info
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
