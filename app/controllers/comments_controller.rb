class CommentsController < ApplicationController
  def create
    @comment = Comment.find_by(id: params[:id])
    @comment.create(
      user_id: current_user.id,
      project_id: current

  end
end
