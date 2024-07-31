require 'rails_helper'

module TenaDcms
  RSpec.describe Patient, type: :model do
    attributes = [
      doctor: :belong_to
    ]
    include_examples('model_shared_spec', :patient, attributes)
  end
end
