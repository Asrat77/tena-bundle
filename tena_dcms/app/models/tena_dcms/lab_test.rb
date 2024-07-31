module TenaDcms
  class LabTest < ApplicationRecord
    belongs_to :lab_technician
    belongs_to :patient
  end
end
