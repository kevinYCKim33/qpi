class ImagesController < ApplicationController

  # def Manzanita
  #   send_file 'public/Manzanita.jpeg', type: 'image/jpeg'
  # end
  #
  # def handshake_unsplash
  #   send_file 'public/handshake_unsplash.jpg', type: 'image/jpg'
  # end
  def KidandCar
    send_file 'app/assets/images/KidandCar.png', type: 'image/png'
  end

end
