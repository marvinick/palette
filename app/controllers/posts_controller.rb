class PostsController < ApplicationController
  before_action :set_post, only: [:update, :show]

  def index
    @posts = Post.order("position")
    @messages = Message.all
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

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "The schedule was updated"
      redirect_to posts_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
  end

  def sort
    params[:post].each_with_index do |id, index|
    Post.update_all({position: index+1}, {id: id})
  end
    render nothing: true
  end

  private

  def post_params
    params.require(:post).permit(:day, :shift, :shift2, :chef1, :chef2, :chef3, :chef4, :chef5, :chef6, :chef7, :chef8, :chef9, :chef10, :title, :description, :scribble)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end