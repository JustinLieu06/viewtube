class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(body: params[:body])
    @comment.author_id = current_user.id
    @comment.video_id = params[:video_id]
    if @comment.save
      render :show
    else
      render json: @comment.errors.full_messages, status: 406
    end
  end

  def index
    video = Video.find(params[:id])
    debugger
    @comments = video.comments
    render :index
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :show
  end

  # private
  # def comment_params
  #   params.require(:comments).permit(:body)
  # end
end
