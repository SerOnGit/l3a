class PhotosController < ApplicationController

    before_action :require_signin, except: [:index, :show]

  def index
    @eng = true

    @photos = Photo.all

    @prevurl = request.referrer
    
    if @prevurl
        if @prevurl.include? "geo"
        @eng = false
        end
    end

    if @prevurl
        if @prevurl.include? "siaxles"
        @eng = false
        end
    end

  end

  def show
    @photo = Photo.find(params[:id])
  
    @photos = Photo.all.order('created_at')


  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to @photo, notice: "Photo successfully updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to @photo, notice: "Photo successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_url, status: :see_other
  end

private

   def photo_params
     params.require(:photo).
       permit(:pho_image)
   end

end
