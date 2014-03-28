class CreateCpForemen < ActiveRecord::Migration
  def change
    create_table :cp_foremen do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :cell

      t.timestamps
    end
  end
end
