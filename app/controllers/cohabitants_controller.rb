class CohabitantsController < ApplicationController
  before_action :authenticate_user!,  only: [:personal, :save_personal, :horoscop, :educational, :family, :expectation, :save_horoscop, :save_educational, :save_family, :save_expectation]
  
  def show
    @cohabitant = Cohabitant.includes([:cohabitant_education, :cohabitant_family, :cohabitant_horoscop, :cohabitant_expectation]).where(id: params[:id]).first
    if @cohabitant
      @self_user = (@cohabitant.user_id == current_user.id) rescue false
    else
      redirect_to root_path
    end
  end

  def new
    
  end

  def personal
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
    else
      redirect_to root_path
    end
    
  end

  def save_personal
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
      @cohabitant.update_attributes(personal_params)
      redirect_to "/cohabitants/horoscop"
    else
      redirect_to root_path
    end
  end

  def horoscop
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
      @horoscope = @cohabitant.build_cohabitant_horoscop if @cohabitant.cohabitant_horoscop.nil?
      @horoscope = @cohabitant.cohabitant_horoscop if @cohabitant.cohabitant_horoscop.present?
    else
      redirect_to root_path
    end
  end

  def save_horoscop
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
      if @cohabitant.cohabitant_horoscop.nil?
        @cohabitant.build_cohabitant_horoscop(horoscope_params).save
      else
        @cohabitant.cohabitant_horoscop.update_attributes(horoscope_params)
      end
      redirect_to "/cohabitants/educational"
    else
      redirect_to root_path
    end
  end
  
  def educational
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
      @education = @cohabitant.build_cohabitant_education if @cohabitant.cohabitant_education.nil?
      @education = @cohabitant.cohabitant_education if @cohabitant.cohabitant_education.present?
    else
      redirect_to root_path
    end
  end

  def save_educational
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
      if @cohabitant.cohabitant_education.nil?
        @education = @cohabitant.build_cohabitant_education(education_params).save
      else
        @education = @cohabitant.cohabitant_education.update_attributes(education_params)
      end
      redirect_to "/cohabitants/family"
    else
      redirect_to root_path
    end
  end
  
  def address
    
  end
  
  def family
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
      @education = @cohabitant.build_cohabitant_family({has_father: true, has_mother: true}) if @cohabitant.cohabitant_family.nil?

      @education = @cohabitant.cohabitant_family if @cohabitant.cohabitant_family.present?
    else
      redirect_to root_path
    end
  end

  def save_family
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
      if @cohabitant.cohabitant_family.nil?
        @education = @cohabitant.build_cohabitant_family(family_params).save
      else
        @education = @cohabitant.cohabitant_family.update_attributes(family_params)
      end
      redirect_to "/cohabitants/expectation"
    else
      redirect_to root_path
    end
  end
  
  def expectation
    @cohabitant = current_user.cohabitant
    if @cohabitant.present?
      @expection = @cohabitant.build_cohabitant_expectation if @cohabitant.cohabitant_expectation.nil?

      @expectation = @cohabitant.cohabitant_expectation if @cohabitant.cohabitant_expectation.present?
    else
      redirect_to root_path
    end
  end

  def save_expectation
    @cohabitant = Cohabitant.where(id: params[:id]).first
    if @cohabitant.present?
      if @cohabitant.cohabitant_expectation.nil?
        @expectation = @cohabitant.build_cohabitant_expectation(expectation_params).save
      else
        @expectation = @cohabitant.cohabitant_expectation.update_attributes(expectation_params)
      end
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  protected
  
  def personal_params
    params.require(:cohabitant).permit(:sub_cast, :married_status, :height, :weight, :complexion, :is_physical_disabilities, :spectacles, :physical_disabilities, :lens, :blood_group)
  end
  
  def horoscope_params
    params.require(:cohabitant_horoscop).permit(:rashi, :charan, :nadi, :gan, :birth_place, :birth_time, :mangal, :devak, :nakshtra)
  end

  def education_params
    params.require(:cohabitant_education).permit(:area, :education, :occupation, :occupation_city, :income, :is_income_annua)
  end
  
  def family_params
    params.require(:cohabitant_family).permit(:has_father, :has_mother, :parents_occupation, :brothers, :married_brothers, :sisters, :married_sisters, :surnames_of_relatives, :native_district, :native_taluka, :family_wealth, :mamas_name)
  end

  def expectation_params
    params.require(:cohabitant_expectation).permit(:cities, :mangal, :caste, :age_difference, :min_height, :divorcee, :occupation, :education)
  end
  
end
