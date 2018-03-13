class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :address
      t.string :dob
      t.string :phone
      t.string :infection
      t.string :injury
      

      t.timestamps
    end
  end
end
