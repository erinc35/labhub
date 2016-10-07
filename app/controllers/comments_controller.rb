class CommentsController < ApplicationController
  def new
    p "$"*60
    p params
    @comment = Comment.new
    @proposal = Proposal.find(params[:proposal_id]) if params[:proposal_id]
    @experiment = Experiment.find(params[:experiment_id]) if params[:experiment_id]
  end

  def create
    @experiment = Experiment.find(params[:experiment_id]) if params[:experiment_id]
    @proposal = Proposal.find(params[:proposal_id]) if params[:proposal_id]

    @comment = @proposal.comments.new(comment_params) if @proposal
    @comment = @experiment.comments.new(comment_params) if @experiment
    

    @comment.commentable_type
    @comment.user_id = session[:user_id]
  	
    if @comment.save
  	  redirect_to proposal_path(@proposal) if @proposal
      redirect_to experiment_path(@experiment) if @experiment
  	else
  	  render 'new'
  	end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
