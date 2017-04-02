class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters  
  def new
    super
  end

  def create
    build_resource(sign_up_params)
    
    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        #set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        #respond_with resource, location: after_sign_up_path_for(resource)
      else
       # set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        #respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
      cohabitant = Cohabitant.new({user_id: resource.id, first_name: resource.first_name, last_name: resource.last_name, mobile: resource.mobile, middle_name: "asdasdads", date_of_birth: Date.today})
      if cohabitant.save
        respond_with resource, location: personal_cohabitants_path(cohabitant)
      else
        respond_with resource, location: after_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end
  
  def update
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name, :gender, :mobile)
  end

  def set_minimum_password_length
    if devise_mapping.validatable?
      @minimum_password_length = resource_class.password_length.min
    end
  end
end 
