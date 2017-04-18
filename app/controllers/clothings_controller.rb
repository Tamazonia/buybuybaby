class ClothingsController < ApplicationController
  before_action :set_clothing, only: [:show, :edit, :update, :destroy]
  def new
    @clothing = current_user.clothings.new
  end

  def create
    @clothing = current_user.clothings.new(clothing_params)

    if @clothing.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def delete
    @clothing.destroy
  end

  def show
  end

  def edit
  end

  def update
    if @clothing.update(clothing_params)
      redirect_to clothing_path(@clothing)
    else
      render 'edit'
    end
  end

  def index
    @clothings = Clothing.all
  end

  private

  def set_clothing
    @clothing = Clothing.find(params[:id])
  end

  def clothing_params
    params.require(:clothing).permit(:description, :age, :price, :gender)
  end
end
