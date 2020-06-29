class CommentsController < ApplicationController
  def create
    blog = Blog.friendly.find(params[:blog_id])
    comment = current_user.comments.build(comment_params)
    comment.blog_id = blog.id
    comment.save
    redirect_to blog_path(blog.id)
  end

  def destroy
    blog = Blog.friendly.find(params[:blog_id])
    @comment = blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(blog.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
