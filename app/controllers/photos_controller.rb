class PhotosController < ApplicationController
  before_filte :get_cohabitant
  
  def index
    @photos = @cohabitant.photos
  end
  
  def new
    @photo = @cohabitant.photos.build
  end

  def create
    @photo = @cohabitant.photos.build
    logo = @organisation.logos.build
    logo.image = logo_upload_params[:image]
    logo.organisation_id = @organisation.id
    if logo.save
      @organisation.update_attributes(logo_url: logo.image_url(:thumb))
      render json: {success: true, url: logo.image_url(:thumb)}
    else
      render json: {success: false, message: document.errors.full_messages.join(' , ')}
    end
    
  end

  def show
  end

  def delete
    
  end
  
  private 
  
  def logo_upload_params
    params.require(:photo).permit(:image)
  end
  
  def get_cohabitant
    @cohabitant = Cohabitant.where(id: params[:id]).first
  end
end
