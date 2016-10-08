class ExperimentsController < ApplicationController

  def index
  	@experiments = Experiment.all
  end

  def new
    @proposal = Proposal.find(params[:proposal_id])
    @experiment = Experiment.new
  end

  def create
    @proposal = Proposal.find(params[:proposal_id])
    @experiment = @proposal.experiments.new(experiment_params)
  	@experiment.title = @proposal.title

  	if @experiment.save
      @proposal.status = "in progress"  	 
      @proposal.save 
  	  redirect_to proposal_experiment_path(@proposal.id, @experiment.id)
  	else
  	  render 'new'
  	end
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

  def edit
    @experiment = Experiment.find(params[:id])
  end

  def update
    @experiment = Experiment.find(params[:id])
    @experiment.assign_attributes(experiment_params)

    if @experiment.save
      redirect_to experiment_path(@experiment)
    else
      render 'edit'
    end
  end

  def destroy
    @experiment = Experiment.find(params[:id])
    @experiment.destroy
    redirect_to proposals_path   
  end

  private

  def experiment_params
    params.require(:experiment).permit(:title, :body)
  end

end
