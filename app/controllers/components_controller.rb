class ComponentsController < ApplicationController
  def new
    @experiment = Experiment.find(params[:experiment_id])
    @component = Component.new
  end

  def create
    @experiment = Experiment.find(params[:experiment_id])
    @component = @experiment.components.new(component_params)
    @component.user_id = session[:user_id]

    if @component.save
      redirect_to experiment_path(@component.experiment_id) 
    else
      render 'new'
    end

  end


  def edit
  end

  def update
  end

  def delete
  end

  private

  def component_params
    params.require(:component).permit(:type_of, :body)
  end
end
