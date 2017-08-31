module ApplicationHelper
  
  def indoor_amenities property
    @property = Property.find(property)
    @property.amenities.where(indoor: true)
  end

  def outdoor_amenities property
    @property = Property.find(property)
    @property.amenities.where(outdoor: true)
  end

end

