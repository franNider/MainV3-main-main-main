class DogsController < ApplicationController
    skip_before_action :protect_pages
  
    def index
    end

    def show
      
        @dogs = current_user.dog.all

        respond_to do |format|
          format.html # show.html.erb
          format.json { render json: @dogs }
        end
    end

    def verFichaMedica
      @dog = current_user.dog.find(params[:id])
    end

    def new
      @dog= Dog.new
  end

def create
  @dog = Dog.new(dog_params)

  if @dog.save
      redirect_to '/profiles/index'
  else
      render :new, status: :unprocessable_entity
  end
end

private
def dog_params
  params.require(:dog).permit(:nombre, :raza,:color, :sexo, :peso, :edad)
end

end
