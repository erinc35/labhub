class CommentsController < ApplicationController
  def new
    p params
  	@comment = Comment.new
  end

  def create
  	@comment = Comment.find(params[:id])

  	if @comment.save
  	  redirect_to root_path
  	else
  	  render 'new'
  	end
  end

  def show
    @comment = Comment.find(params[:id])
  end
end
