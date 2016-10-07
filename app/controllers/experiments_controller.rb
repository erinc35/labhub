class ExperimentsController < ApplicationController

  def index
  	@experiments = Experiment.all
  end

  def new
    @proposal = Proposal.find(params[:proposal_id])
    @experiment = Experiment.new
    Approval.create(user_id: session[:user_id], proposal_id: @proposal.id)
    @proposal.status = "approved"
    @proposal.save
  end

  def create
    @proposal = Proposal.find(params[:proposal_id])
    @experiment = @proposal.experiments.new(experiment_params)
  	@experiment.title = @proposal.title

  	if @experiment.save  	  
  	  redirect_to proposal_experiment_path(@proposal.id, @experiment.id)
  	else
  	  render 'new'
  	end
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def experiment_params
    params.require(:experiment).permit(:title, :body)
  end

end
