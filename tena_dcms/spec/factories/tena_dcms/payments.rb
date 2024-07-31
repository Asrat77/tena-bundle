FactoryBot.define do
  factory :payment, class: 'TenaDcms::Payment' do
    sub_total { 100 }
    gross_total { 100 }
    deposit_type { 1 }
    patient
    doctor
  end
end
