class PicturesController < ApplicationController
	before_action :set_picture , only: [:edit, :update, :destroy]

	def index
  	@pictures = Picture.all
	end

 	def new
    @picture = Picture.new
  end

  def edit  	
  end

  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to root_path, notice: 'Picture was successfully updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Picture was successfully deleted.' }
    end
  end

 	def create
    @picture = Picture.new(picture_params)

   respond_to do |format|
      if @picture.save
        format.html { redirect_to pictures_path, notice: 'Picture was successfully added' }
      else
        format.html { render :new }
      end
    end
  end

  private
  	def set_picture
  		@picture = Picture.find(params[:id])
  	end

		def picture_params
	    params.require(:picture).permit(:title, :image)
		end
		
end