class CreateTenaDcmsLabs < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_labs do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
