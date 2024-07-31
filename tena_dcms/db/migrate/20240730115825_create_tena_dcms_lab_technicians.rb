class CreateTenaDcmsLabTechnicians < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_lab_technicians do |t|
      t.string :name
      t.string :contact_info

      t.timestamps
    end
  end
end
