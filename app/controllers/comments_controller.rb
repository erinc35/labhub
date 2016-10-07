class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @proposal = Proposal.find(params[:proposal_id])
  end

  def create
    @proposal = Proposal.find(params[:proposal_id])
    @comment = @proposal.comments.new(comment_params)
    @comment.commentable_type
    @comment.user_id = session[:user_id]
  	
    if @comment.save
  	  redirect_to proposal_path(@proposal)
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
