class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create

    if params[:commit] == "Remember Me?"
      if order_params[:email].present?
        @order = Order.where(email: order_params[:email]).first
        if @order.present?
          render 'edit'
        else
          flash[:warning] = "You have not made any order!"
          redirect_to root_path
        end
      else
        flash[:warning] = "Your have to put your email inorder to use Remember Me function!"
        redirect_to root_path
      end
    else
      @order = Order.new(order_params)
      if @order.save
        flash[:success] = "Your order has been submitted successfully!"
        redirect_to root_path
      else
        # flash[:warning] = "Please review errors below"
        render 'new'
      end
    end
  end

  def update
    @order = Order.find(params[:id])

    if @order.update_attributes(order_params)
      flash[:success] = "Your order has been updated successfully!"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
