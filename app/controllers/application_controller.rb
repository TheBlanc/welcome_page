class ApplicationController < ActionController::Base


helper_method :current_background_image
helper_method :current_user


private

  def current_user
    user_id = session[:user_id]
  end

  def current_background_image
    current_time = Time.now.strftime("%H%M").to_i

    if current_time >= 2000
      #Photo 1
      return "barley.jpeg"
    elsif current_time >= 1600
      #Photo 2
      return "dandilion.jpeg"

    elsif current_time >= 1200
      #Photo 3
      return "feathers.jpeg"

    elsif current_time >= 800
      #Photo 3
      return "waterdrop.jpeg"

    elsif current_time >= 400
      #Photo 3
      return "jellyfish.jpeg"

    else
      #Photo 3
      return "leaves.jpeg"
    end
  end

end
