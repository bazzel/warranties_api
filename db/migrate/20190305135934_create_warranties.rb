class CreateWarranties < ActiveRecord::Migration[5.2]
  def change
    create_table :warranties do |t|
      t.string :name
      t.date :expires_on

      t.timestamps
    end
  end
end
