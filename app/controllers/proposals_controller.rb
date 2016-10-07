class ProposalsController < ApplicationController
  before_action :require_login

  def index
  	@proposals = Proposal.all
  end

  def new
    @proposal = Proposal.new
  end

  def create
  	@proposal = Proposal.new(proposal_params)
    @proposal.user_id = session[:user_id]

  	if @proposal.save
  	  redirect_to proposal_path(@proposal)
  	else
  	  render 'new'
  	end
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def show
  	@proposal = Proposal.find(params[:id])
  end

  def update
    @proposal = Proposal.find(params[:id])
    @proposal.assign_attributes(proposal_params)

    if @proposal.save
      redirect_to proposal_path(@proposal)
    else
      render 'edit'
    end
  end

  def destroy
    @proposal = Proposal.find(params[:id])
    @proposal.destroy
    redirect_to proposals_path    
  end

  private

  def proposal_params
  	params.require(:proposal).permit(:title, :abstract)
  end

end
