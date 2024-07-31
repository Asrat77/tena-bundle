require 'rails_helper'

module TenaDcms
  RSpec.describe Payment, type: :model do
    attributes = [
      doctor: :belong_to,
      patient: :belong_to
    ]
    include_examples('model_shared_spec', :payment, attributes)
  end
end
