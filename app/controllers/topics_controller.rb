class TopicsController < ApplicationController
  def index
    @topics = Topic.paginate(page: params[:page])
    authorize @topics
  end

  def new
    @topic = Topic.new
     authorize @topic
  end

  def create
    @topic = Topic.new(topic_params)
     authorize @topic
     if @topic.save
       redirect_to @topic, notice: "Topic was saved successfully."
     else
       flash[:error] = "Error creating Topic. Please try again."
       render :new
     end
     
   end

  def show
    @topic = Topic.find(params[:id])
    @posts = @topic.posts.paginate(page: params[:page], per_page: 100)
 
  end

  def edit
     @topic = Topic.find(params[:id])
  end

  def update
     @topic = Topic.find(params[:id])
     authorize @topic
     if @topic.update_attributes(topic_params)
       flash[:notice] = "Topic was saved."
       redirect_to @topic
     else
       flash[:error] = "There was an error saving the Topic. Please try again."
       render :edit
     end
   end

  private

  def topic_params
    params.require(:topic).permit(:name, :description)
  end
end
