module TenaDcms
  class Patient < ApplicationRecord
    belongs_to :doctor
  end
end
