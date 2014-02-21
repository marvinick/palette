class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show]

  def index
    @posts = Post.order("position")
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

  def sort
    params[:post].each_with_index do |id, index|
    Post.update_all({position: index+1}, {id: id})
  end
    render nothing: true
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end