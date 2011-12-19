class ApplicationController < ActionController::Base
  
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    
    # save list if there is a temp_list in the session
    if session[:list].present?
      
      # save list
      @list = current_user.lists.create(session[:list]["list"])
      
      # clear session
      session[:list] = nil
      
      #redirect
      flash[:notice] = "Sweet, logged in. Nice list, btw :)"      
      user_list_path(@list.user, @list)
      
    else
      #if there is not temp list in the session proceed as normal
      super
    end
    
  end

  private

  
end
