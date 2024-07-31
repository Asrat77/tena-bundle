FactoryBot.define do
  factory :invoice, class: 'TenaDcms::Invoice' do
    generated_on { Date.today }
    total_price { 150 }
    service_type { 1 }
  end
end
