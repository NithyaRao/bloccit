class TopicsController < ApplicationController
  def index
    @topics = Topic.visible_to(current_user).paginate(page: params[:page], per_page: 10)
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
    # don't want to show a post of a private topic.
    authorize @topic 
    @posts = @topic.posts.includes(:user).includes(:comments).paginate(page: params[:page], per_page: 10)
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

  def destroy
     @topic = Topic.find(params[:id])
     authorize @topic
     if @topic.destroy
      flash[:notice] = "\"#{@topic.name}\" was deleted successfully."
       redirect_to topics_path
     else
       flash[:error] = "There was an error deleting the Topic. Please try again."
       render :show
     end
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :description)
  end
end
