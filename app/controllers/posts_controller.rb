class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:notice] = "A new post has been created"
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end