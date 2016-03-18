class ConcretesController < ApplicationController
  def new
    @concrete = Concrete.new
  end

  def create
    @concrete = Concrete.create(concrete_params)
    render nothing: true
  end

  def edit
    @concrete = Concrete.find(params[:id])
  end

  def update
    render nothing: true
  end

  private
  def concrete_params
    params.require(:concrete).permit(:mix_type, :color, :psi, :cost_per_yard)
  end

end
