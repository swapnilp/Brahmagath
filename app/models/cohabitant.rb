class Cohabitant < ActiveRecord::Base
  has_one :cohabitant_family
  has_one :cohabitant_horoscop
  has_one :cohabitant_education
  has_one :cohabitant_address
  has_one :cohabitant_family
  has_one :cohabitant_expectation
end
