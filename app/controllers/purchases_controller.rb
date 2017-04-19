class PurchasesController < ApplicationController

  def new
    @clothing = Clothing.find(params[:clothing_id])
    @purchase = @clothing.build_purchase
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user = current_user

    if @purchase.save
      #redirect_to clothing_purchase_path(@purchase.clothing_id, @purchase.id)
      redirect_to clothings_path, notice: "Compra efetuada com sucesso!"
    else
      render :new
      puts "fazer render"
      flash[:success] = "ERROR"
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
    params.require(:purchase).permit(:clothing_id)
  end

end



