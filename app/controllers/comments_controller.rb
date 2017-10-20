class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def edit
  end


  def create
    if current_user
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id
      @comment.trip_id = params[:tripid]
      respond_to do |format|
        if @comment.save
          format.html { redirect_to '/', notice: 'Comment is successfully created.' }
        else
          format.html { redirect_to '/', notice: 'Please provide valid details.'}
        end
      end

    else
      #This method depends whether user has to be known to comment or not.
      # Currently its implemented to redirect user to sign up page first if he/she has'nt logged in
      respond_to do |format|
        format.html { redirect_to '/users/sign_in', notice: 'Please login first to comment on post.'}
       end

    end
  end

  def update
    if current_user.id == @comment.user_id
      respond_to do |format|
        if @comment.update(comment_params)
          format.html { redirect_to '/', notice: 'Comment is successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    else
      respond_to do |format|
        # Only user who has commented can update it but functionality can be changed so admin and moderators can do the same too
        format.html { redirect_to '/',notice: 'You are not authorized to update comment' }
      end

    end
  end

  def destroy
    if current_user.id == @comment.user.id
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to '/', notice: 'Comment is successfully destroyed.' }
      end
    else
      respond_to do |format|
        # Only user who has commented can delete it but functionality can be changed so admin and moderators can do the same too
        format.html { redirect_to '/',notice: 'You are not authorized to delete comment' }
      end
    end

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:comment_text, :user_id, :trip_id)
  end
end
