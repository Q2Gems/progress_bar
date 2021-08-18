class CreateProgs < ActiveRecord::Migration[6.1]
  def change
    create_table :progs do |t|
      t.string :staff_id
      t.string :staff_name
      t.string :company_name

      t.timestamps
    end
  end
end
