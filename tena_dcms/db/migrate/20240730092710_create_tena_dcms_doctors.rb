class CreateTenaDcmsDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_doctors do |t|
      t.string :name
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
