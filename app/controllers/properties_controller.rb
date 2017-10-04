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
  def get_state_cities
    @state = State.find(params[:state_id])
    @cities = @state.cities
  end

  def find_property_by_serach
    @city = City.find_by(name: params[:q][:name_cont])
    @properties = @city.properties if @city.properties.present?
  end

  private
    def property_params
      params.require(:property).permit(:name, :address_line1, :address_line2, :property_type, :property_size, :description, :rental_price, :agent_id, :zipcode, :state_id, :city_id, images_attributes: [:id,:image, :imageable_id, :imageable_type, :_destroy],
        amenities_attributes: [:id, :indoor, :outdoor, :name, :property_id, :amenity_icon, :_destroy])
    end
end
