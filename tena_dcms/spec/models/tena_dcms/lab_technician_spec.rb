require 'rails_helper'

module TenaDcms
  RSpec.describe LabTechnician, type: :model do
    attributes = []
    include_examples('model_shared_spec', :lab_technician, attributes)
  end
end
