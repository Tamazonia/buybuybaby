class PurchasesController < ApplicationController

  def new
    @clothing = Clothing.find(params[:clothing_id])
    @purchase = @clothing.build_purchase
    @purchase.user = current_user
    @purchase.seller_id = @clothing.user_id

    @delivery_price = @purchase.distance_price
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user = current_user

    clothing = @purchase.clothing

    if @purchase.save
      clothing.bought = true
      clothing.save
      #redirect_to clothing_purchase_path(@purchase.clothing_id, @purchase.id)
      redirect_to clothings_path, notice: "Compra efetuada com sucesso!"
    else
      render :new
    end

  end

  def destroy
    @purchase = Purchase.find(purchase_params[:id])
    @purchase.destroy
    redirect_to clothings_path
  end

  # Como regra,
  # se for para fazer UPDATE ou CREATE
  # use o strong parameters, ex: purchase_params

  # Se for para pegar parametros da URL,
  # em qualquer outra acao do controller,
  # usar params direto.

  def show
    @purchase = Purchase.find(params[:id])

  end

  def purchase_params
    params.require(:purchase).permit(:clothing_id, :user_id, :seller_id, :price, :delivery_price, :price)
  end

end



