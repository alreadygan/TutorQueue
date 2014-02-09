class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :password

      t.timestamps
    end
  end
end
