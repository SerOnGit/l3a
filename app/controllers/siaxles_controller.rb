class SiaxlesController < ApplicationController

    
  before_action :require_signin, except: [:index]

  def index
    @siaxles = Siaxle.all
  end

  def show
    @siaxle = Siaxle.find(params[:id])
  end

  def edit
    @siaxle = Siaxle.find(params[:id])
  end

  def update
    @siaxle = Siaxle.find(params[:id])
    if @siaxle.update(siaxle_params)
      redirect_to @siaxle, notice: "სიახლე განახლებულია"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @siaxle = Siaxle.new
  end

  def create
    @siaxle = Siaxle.new(siaxle_params)
    if @siaxle.save
      redirect_to @siaxle, notice: "სიახლე შეცვლილია!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @siaxle = Siaxle.find(params[:id])
    @siaxle.destroy
    redirect_to siaxles_url, status: :see_other
  end

private

  def siaxle_params
    params.require(:siaxle).
      permit(:name, :description, :starts_at, :sia_image)
  end

end
