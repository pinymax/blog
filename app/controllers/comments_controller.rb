class CommentsController < ApplicationController


  def reply
    @par = Comment.find(params[:comment_id])
    @post = Post.find(params[:post_id])
    comment = Comment.new(:parent_id => params[:comment_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user
    @comment.save


    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @comment.update_attributes(comment_params)
    redirect_to root_url
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    respond_to do |format|
      format.html { rediret_to post_path(@post) }
      format.js
    end 
  end

private

  def comment_params
    params.require(:comment).permit(:name, :body, :parent_id)
  end
end
