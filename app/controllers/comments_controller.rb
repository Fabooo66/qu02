class CommentsController < ApplicationController
  def index
    @comment = Comment.all
  end


  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to_root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:saying)
  end

end
