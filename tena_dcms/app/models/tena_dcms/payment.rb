module TenaDcms
  class Payment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
  end
end
