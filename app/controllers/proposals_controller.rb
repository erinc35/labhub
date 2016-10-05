class ProposalsController < ApplicationController
  def index
  	@proposals = Proposal.all
  end

  def new
  	@proposal = Proposal.new
  end

  def create
  	@proposal = Proposal.new(proposal_params)

  	if @proposal.save
  	  redirect_to proposal_path(@proposal)
  	else
  	  render 'new'
  	end
  end

  def edit
  end

  def show
  	@proposal = Proposal.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def proposal_params
  	params.require(:proposal).permit(:title, :abstract)
  end

end
