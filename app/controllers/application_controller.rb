class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  protect_from_forgery

  before_filter :check_user 
  before_filter :check_regular_user,:only=>[:edit,:destroy,:update]
  
  def check_user_wish
   if  Wish.find(params[:id]).user_id != @current_user.id
	render :text=>"нельзя!", :layout => 'application'
   end
  end
 
  private
  def check_user
    @current_user=current_user
  end
  
  

  def check_regular_user
    unless @current_user
      render :text=>"Доступ для незарегистрированных пользователей запрещен", :layout => 'application'
    end
  end

  def check_admin_user
    unless @current_user && @current_user.admin?
      render :text=>"Доступ запрещен", :layout => 'application'
    end
  end
end
