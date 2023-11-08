class ProfilesController < ApplicationController
  skip_before_action :protect_pages
  before_action :set_profile
  def index
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
  @profile = current_user 
  if @profile.update(profile_params)
    # Redirigir a la página /profiles/index
    redirect_to profiles_path, notice: 'Perfil actualizado exitosamente'
  else
    render :edit, status: :unprocessable_entity
  end
  end

  private
  def set_profile
  @profile = current_user
  end

  def profile_params
    params.require(:user).permit(:nombre, :apellido, :email, :dni) # Asegura que solo los campos permitidos se actualicen
  end

end
