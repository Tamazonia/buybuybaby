class ClothingsController < ApplicationController
  before_action :set_clothing, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new]

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
    # if params[:gender] == "Boy"
    #   @clothings = Clothing.where(gender: "Boy")
    # elsif @clothings.gender == "Girl"
    #   @clothings = Clothing.where(gender: "Girl")
    # else
      @clothings = Clothing.search(params[:gender], params[:age])
    #end
  end

  private

  def set_clothing
    @clothing = Clothing.find(params[:id])
  end

  def clothing_params
    params.require(:clothing).permit(:description, :age, :price, :gender, :photo, :photo_cache)
  end
end
