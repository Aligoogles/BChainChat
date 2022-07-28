class RepliesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post

    def create
        @reply = @post.replies.create(reply_params)
        @reply.user = current_user
      
        if @reply.save
            flash[:noice] = "Reply added"
            redirect_to post_path(@post)
        else
            flash[:alert] = "Reply not added"
            redirect_to post_path(@post)
        end
    end

    def destroy
		@reply = current_user.replies.find(params[:id])
		@reply.destroy
		redirect_to post_path(@post)
    end

    def show
        @post = Post.find(params[:post_id])
        @reply = @post.replies.find(params[:id])
        @reply.destroy
        redirect_to post_path(@post)
    end

    private

    def set_post
        @post = Post.find(params[:post_id])
    end

    def reply_params
        params.require(:reply).permit(:user, :content)
    end
end
