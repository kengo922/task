class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.references :department, foreign_key: true
      t.references :subject, foreign_key: true
      t.references :day, foreign_key: true
      t.references :limit, foreign_key: true

      t.timestamps
    end
  end
end
