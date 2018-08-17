class ImagesController < ApplicationController

  # weird webflow logic that pulls this picture from seemingly out of nowhere
  def KidandCar
    send_file 'app/assets/images/KidandCar.png', type: 'image/png'
  end

end
