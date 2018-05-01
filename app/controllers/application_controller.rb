class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  helper_method :current_account

  def current_order
      if session[:order_id]
        Order.find(session[:order_id])
      else
        if user_signed_in?
          Account.find(current_account.id).orders.create
        else
          Order.create
        end
      end
    end

  def current_account
    @current_account ||= Account.find(session[:account_id]) if session[:account_id]
    rescue ActiveRecord::RecordNotFound
    end
  end

  def authorize
   if !current_account
     flash[:alert] = "You aren't authorized to visit that page."
   end
 end
