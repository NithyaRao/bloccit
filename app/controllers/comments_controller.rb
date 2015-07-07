class CommentsController < ApplicationController
  
  def create
     @post = Post.find(params[:post_id])
     @comments = @post.comments
     @comment = current_user.comments.build(comment_params)
     @comment.post = @post
     @topic = @comment.post.topic
     authorize @comment
     # only authorize in create and not in new.
     if @comment.save
       flash[:notice] = "Comment was saved."
       redirect_to [@topic, @comment.post]
     else
       flash[:error] = "There was an error saving the comment. Please try again."
       render "posts/show" 
     end
       
   end

  def comment_params
     params.require(:comment).permit(:body)
  end
end
