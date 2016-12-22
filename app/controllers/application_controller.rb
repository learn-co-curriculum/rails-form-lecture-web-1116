class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def form_for(obj)
    if obj.persisted?
      # do something
    else
      # do somethingelse
    end
  end

end
