class AddColumnsToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :mobile_no, :integer
    add_column :students, :relation, :integer
    add_column :students, :district, :integer
    add_column :students, :address, :string
  end
end
