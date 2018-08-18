class ImagesController < ApplicationController
  
  # weird webflow logic that pulls this picture from seemingly out of nowhere
  def KidandCar
    # only file worth keeping in assets directory
    send_file 'app/assets/images/KidandCar.png', type: 'image/png'

  end

end
