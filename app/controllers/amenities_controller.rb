class AmenitiesController < ApplicationController
  def index
    @amenities = Amenity.all
  end
 
  def show
    @amenity = Amenity.find(params[:id])
  end
 
  def new
    @amenity = Amenity.new
  end
 
  def edit
    @amenity = Amenity.find(params[:id])
  end
 
  def create
    @amenity = Amenity.new(amenity_params)
 
    if @amenity.save
      redirect_to @amenity
    else
      render 'new'
    end
  end
 
  def update
    @amenity = Amenity.find(params[:id])
 
    if @amenity.update(amenity_params)
      redirect_to @amenity
    else
      render 'edit'
    end
  end
 
  def destroy
    @amenity = Amenity.find(params[:id])
    @amenity.destroy
 
    redirect_to amenities_path
  end
 
  private
    def amenity_params
      params.require(:amenity).permit(:name, :indoor, :outdoor, :property_id)
    end
end
