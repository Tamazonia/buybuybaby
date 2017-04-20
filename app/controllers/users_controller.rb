class UsersController < ApplicationController


  def show

    @user = User.find(params[:id])
    @clothings = @user.clothings

    # 1a forma -> traz apenas o que tem

    #@purchases = Purchase.where(clothing_id: @clothings.pluck(:id))

    # 2a forma -> traz apenas o que tem

    #@purchases = []
    #@clothings.each do |clothing|
      #@purchases << clothing.purchase
    #end

    # 3a forma -> traz tb nil
    #@purchases = @clothings.map(&:purchase)
    # 3a forma upgrade -> traz apenas o que tem
    @purchases = @clothings.map(&:purchase).compact


  end


end
