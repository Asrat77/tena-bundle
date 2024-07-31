require 'rails_helper'

module TenaDcms
  RSpec.describe TenaDcms::Doctor, type: :model do
    attributes = []
    include_examples('model_shared_spec', :doctor, attributes)
  end
end
