class CreateProspectiveStudents < ActiveRecord::Migration
  def change
    create_table :prospective_students do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
