class TurnosController < ApplicationController
    skip_before_action :protect_pages
  
    def index
    end
    def show
      if current_user.rol == "Administrador"
        @turnos = Turno.all
      else
        @turnos = current_user.turno.all
      end
    end
    def new
      @turno = Turno.new
    end

    def create

      @turno = Turno.new(turno_params)

      if @turno.save
        redirect_to turnos_path
      else
          render :new, status: :unprocessable_entity
      end
  end
  def edit
    @turno = Turno.find(params[:id])
  end
  def update
    @turno = Turno.find(params[:id])
    @turno.estado = "A Confirmar"
    
    if @turno.update (turno_params)
      redirect_to "/turnos/show"
    else
        render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    Turno.find(params[:id]).destroy

    redirect_to "/turnos/show" #, notice: 'Tu turno se ha cancelado correctamente', status: :see_other
  end
  def confirmar
  end
  private
  
  def turno_params
      params.require(:turno).permit(:motivo, :fecha)
  end
  end