class CreateTenaDcmsAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_appointments do |t|
      t.date :date
      t.integer :status
      t.string :remarks
      t.references :doctor,
                   null: false,
                   index: { name: 'doctor_on_app_indx' },
                   foreign_key: { to_table: :tena_dcms_doctors }
      t.references :patient,
                   null: false,
                   index: { name: 'patient_on_app_indx' },
                   foreign_key: { to_table: :tena_dcms_patients }

      t.timestamps
    end
  end
end
