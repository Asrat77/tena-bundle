class CreateTenaDcmsPrescriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_prescriptions do |t|
      t.date :date, default: Date.today
      t.string :doctor_note
      t.string :drug_information
      t.references :doctor,
                   null: false,
                   index: { name: 'doctor_on_ps_indx' },
                   foreign_key: { to_table: :tena_dcms_doctors }
      t.references :patient,
                   null: false,
                   index: { name: 'patient_on_ps_indx' },
                   foreign_key: { to_table: :tena_dcms_patients }

      t.timestamps
    end
  end
end
