class CommentsController < ApplicationController
  before_action :require_login, except: [:create]
  
  def index
  end
  
  def show
  end
  
  def new
  end
  
  def edit
  end
  
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.save
    redirect_to article_path(@comment.article)
  end
  
  def update
  end
  
  def destroy
#    @comment = Comment.find(params[:comment_id])
#    @comment.destroy
#    flash.notice = "Comment has been removed."
#    redirect_to article_path(@comment.article)
  end
  
  private
  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
