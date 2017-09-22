class PostsController < ApplicationController

  def index
    @posts = Post.all
    @category = Category.find(params[:category_id])
  end

  def new
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])

    @post = @category.posts.create(post_params)
    redirect_to category_path(@category)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :body, :category_id)
  end

end
