class CreateStudentModels < ActiveRecord::Migration[5.1]
  def change
    create_table :student_models do |t|
      t.string :title
      t.string :mail
      t.string :mobile
      t.string :password

      t.timestamps
    end
  end
end
