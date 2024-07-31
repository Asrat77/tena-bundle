class CreateTenaDcmsPatients < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile_number
      t.string :email
      t.string :gender
      t.references :doctor,
                   null: false,
                   index: { name: 'doctor_on_ccpoitm_indx' },
                   foreign_key: { to_table: :tena_dcms_doctors }

      t.timestamps
    end
  end
end
