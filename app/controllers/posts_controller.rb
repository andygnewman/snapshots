class PostsController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @user_posts = Post.where(user: current_user).order(created_at: :desc)
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post =  Post.new(post_params)
      @post.user = current_user
      if @post.save
        redirect_to posts_path
      else
        render 'new'
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:image, :title)
  end

end
