class CreatePageTypes < ActiveRecord::Migration
  def change
    create_table :page_types do |t|
      t.string :page_type
      t.integer :number_of_page

      t.timestamps
    end
  end
end
