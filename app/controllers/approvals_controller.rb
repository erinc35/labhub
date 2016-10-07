class ApprovalsController < ApplicationController
  def new
  	@proposal = Proposal.find(params[:proposal_id])
  	@approval = @proposal.approvals.create(user_id: session[:user_id])
    @proposal.status = "approved"
    @proposal.save
    redirect_to proposal_path(@proposal)
  end
end
