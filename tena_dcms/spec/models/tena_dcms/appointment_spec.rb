require 'rails_helper'

module TenaDcms
  RSpec.describe Appointment, type: :model do
    attributes = [
      doctor: :belong_to,
      patient: :belong_to
    ]
    include_examples('model_shared_spec', :appointment, attributes)
  end
end
