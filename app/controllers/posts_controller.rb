class PostsController < ApplicationController

before_action :set_post, only:[:show_post, :edit_post, :update, :delete]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit_post
  end
  def show_post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "you created a post!"
    else
      render :new, alert: "your post was not create"
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "you updated a post!"
    else
      render :edit, alert: "your post was not create"
    end
  end

  def delete
    @post.destroy
      redirect_to posts_path, notice: "you deleted a post!"
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
