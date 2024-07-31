require 'rails_helper'

module TenaDcms
  RSpec.describe LabTest, type: :model do
    attributes = []
    include_examples('model_shared_spec', :lab_test, attributes)
  end
end
