require 'rails_helper'

module TenaDcms
  RSpec.describe Prescription, type: :model do
    attributes = []
    include_examples('model_shared_spec', :prescription, attributes)
  end
end
