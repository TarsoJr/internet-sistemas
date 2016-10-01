class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true
      t.datetime :entry_at

      t.timestamps
    end
  end
end
