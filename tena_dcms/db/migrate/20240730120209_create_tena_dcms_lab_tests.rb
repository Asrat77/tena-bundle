class CreateTenaDcmsLabTests < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_lab_tests do |t|
      t.date :date, default: Date.today
      t.string :result
      t.string :status
      t.references :lab_technician,
                   null: true,
                   index: { name: 'lab_technician_on_lt_indx' },
                   foreign_key: { to_table: :tena_dcms_lab_technicians }
      t.references :patient,
                   null: false,
                   index: { name: 'patient_on_lt_indx' },
                   foreign_key: { to_table: :tena_dcms_patients }

      t.timestamps
    end
  end
end
