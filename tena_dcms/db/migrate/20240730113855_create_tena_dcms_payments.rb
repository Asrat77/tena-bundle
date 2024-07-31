class CreateTenaDcmsPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_payments do |t|
      t.integer :sub_total
      t.integer :gross_total
      t.integer :deposit_type
      t.references :doctor,
                   null: false,
                   index: { name: 'doctor_on_payments_indx' },
                   foreign_key: { to_table: :tena_dcms_doctors }
      t.references :patient,
                   null: false,
                   index: { name: 'patient_on_payments_indx' },
                   foreign_key: { to_table: :tena_dcms_patients }

      t.timestamps
    end
  end
end
