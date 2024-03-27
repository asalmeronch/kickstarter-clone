class CommentsController < ApplicationController
  def create
    @comment = Comment.create(
      user_id: current_user.id,
      project_id: current_project.id,
      comment: params[:comment],
    )
    render :show
  end
end
