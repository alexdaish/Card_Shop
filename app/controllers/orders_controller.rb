class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def destroy
	  current_order.destroy
	  session[:order_id] = nil
	  redirect_to root_path, :notice => "Basket emptied successfully."
  end
end
