class PostsController < ApplicationController
  before_action :authenticate_user
  def index
    @posts = Post.all
  end

  def create
    Post.create(username: @current_user.username, content: params[:content])
    
    redirect_back(fallback_location: root_path)
  end

  def update
    @posts = Post.all
    param_json=@posts.to_json
    print param_json
    respond_to do |format|
      format.json { render :json => @posts }
    end
  end
end
