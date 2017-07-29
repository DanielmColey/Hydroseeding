class PicturesController < ApplicationController
	before_action :set_picture , only: [:edit]

	def index
  	@pictures = Picture.all
	end

 	def new
    @picture = Picture.new
  end

  def edit  	
  end

 	def create
    @picture = Picture.new(picture_params)

   respond_to do |format|
      if @picture.save
        format.html { redirect_to pictures_path, notice: 'You added the picture' }
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