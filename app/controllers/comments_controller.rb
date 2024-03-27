class CommentsController < ApplicationController
  def create
    @comment = Comment.create(
      user_id: current_user.id,
      project_id: params[:project_id],
      comment: params[:comment],
    )
    render :show
  end
end
