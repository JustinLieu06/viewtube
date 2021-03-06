class Api::VideosController < ApplicationController
  def index
    @videos = Video.all
    render :index
  end

  def show
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def create
    if params[:video][:video] == "null"
      render json: ["Please select video"], status: 406
      return nil 
    elsif params[:video][:thumbnail] == "null"
      render json: ["Please select thumbnail"], status: 406
      return nil
    end
    @video = Video.new(video_params)
    @video.author_id = current_user.id
    if @video.save!
      render :show
    else
      render json: @video.errors.full_messages, status: 406
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(video_params)
      render :show
    else
      render json: @video.errors.full_messages, status: 406
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    render :show
  end

  def search
    input = params[:query].downcase
    @videos = Video.where("LOWER(videos.title) LIKE ?", "%#{input}%")
    
    # debugger
    render :index
  end

  private
  def video_params
    params.require(:video).permit(:title, :description, :author_id, :video, :thumbnail)
  end

end
