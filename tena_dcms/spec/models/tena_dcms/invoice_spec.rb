require 'rails_helper'

module TenaDcms
  RSpec.describe Invoice, type: :model do
    attributes = []
    include_examples('model_shared_spec', :invoice, attributes)
  end
end
