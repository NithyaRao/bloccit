class CommentsController < ApplicationController
  def new
   @post = Post.find(params[:post_id])
   @comment = Comment.new
   authorize @comment
  end
  
  def create
     @post = Post.find(params[:post_id])
     @comments = @post.comments
     @comment = current_user.comments.build(comment_params)
     @comment.post = @post
     @topic = @comment.post.topic
     authorize @comment
     if @comment.save
       flash[:notice] = "Comment was saved."
       redirect_to [@topic, @comment.post]
     else
       flash[:error] = "There was an error saving the comment. Please try again."
       render "posts/show" 
     end      
   end

  def destroy
     @topic = Topic.find(params[:topic_id])
     @post = Post.find(params[:post_id])
     @comment = Comment.find(params[:id])
     authorize @comment
     if @comment.destroy
      flash[:notice] = "Comment was removed."
       redirect_to [@topic, @post]
     else
       flash[:error] = "There was an error removing the comment. Please try again."
       render 'posts/show'
     end
  end

  def comment_params
     params.require(:comment).permit(:body)
  end
end
