class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lname
      t.integer :empid
      t.string :mail_id
      t.string :job
      t.integer :mgr
      t.date :hiredate
      t.float :salary
      t.float :comm
      t.integer :deptno

      t.timestamps
    end
  end
end
