class AddColumnsToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :contact_name, :string
  end
end
