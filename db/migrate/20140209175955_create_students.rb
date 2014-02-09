class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :question
      t.string :description

      t.timestamps
    end
  end
end
