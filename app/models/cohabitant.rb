class Cohabitant < ActiveRecord::Base
  has_one :cohabitant_family
  has_one :cohabitant_horoscop
  has_one :cohabitant_education
  has_one :cohabitant_address
  has_one :cohabitant_family
  has_one :cohabitant_expectation
  has_many :photos
  belongs_to :user

  def profile_image
    self.photos.last.try(:image).try(:url) || "/assets/#{self.gender}.jpg"
  end

end
