class PropertiesController < ApplicationController
  def index
    @properties = Property.all

  end
 
  def show
    @property = Property.find(params[:id])
    
  end
 
  def new
    @property = Property.new
  end
 
  def edit
    @property = Property.find(params[:id])
  end
 
  def create
    @property = Property.new(property_params)
 
    if @property.save
      redirect_to @property
    else
      render 'new'
    end
  end
 
  def update
    @property = Property.find(params[:id])
 
    if @property.update(property_params)
      redirect_to @property
    else
      render 'edit'
    end
  end
 
  def destroy
    @property = Property.find(params[:id])
    @property.destroy
 
    redirect_to properties_path
  end
 
  private
    def property_params
      params.require(:property).permit(:name, :address_line1, :address_line2, :property_type, :property_size, :description, :rental_price, images_attributes: [:id,:image, :imageable_id, :imageable_type, :_destroy],
        amenities_attributes: [:id, :indoor, :outdoor, :name, :property_id, :_destroy])
    end
end
