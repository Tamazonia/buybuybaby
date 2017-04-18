class PurchasesController < ApplicationController

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user = current_user

    if @purchase.save
      redirect_to clothing_purchase_path(@purchase)
    else
      render :new
    end

  end

  def destroy
    @purchase = Purchase.find(purchase_params[:id])
    @purchase.destroy
    redirect_to clothings_path
  end

  def show
    @purchase = Purchase.find(purchase_params[:id])
  end


  def purchase_params
    params.require(:purchase).permit(:clothing_id)
  end

end



