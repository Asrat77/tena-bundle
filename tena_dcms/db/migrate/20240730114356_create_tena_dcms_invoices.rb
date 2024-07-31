class CreateTenaDcmsInvoices < ActiveRecord::Migration[7.1]
  def change
    create_table :tena_dcms_invoices do |t|
      t.date :generated_on, default: Date.today
      t.float :total_price
      t.integer :service_type

      t.timestamps
    end
  end
end
