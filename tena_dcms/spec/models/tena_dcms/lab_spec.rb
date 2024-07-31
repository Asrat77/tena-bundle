require 'rails_helper'

module TenaDcms
  RSpec.describe Lab, type: :model do
    attributes = []
    include_examples('model_shared_spec', :lab, attributes)
  end
end
