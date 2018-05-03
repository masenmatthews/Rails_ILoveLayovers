class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @account = Account.find(session[:account_id])
    @post = @account.posts.new(post_params)
    if @post.save
      flash[:notice] = "Thanks, your post is has been added to the list!"
      redirect_to posts_path
    else
      render :index
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post  _path
  end

  def update
    @post = Post.find(params[:id])
    if @post.update!(post_params)
      flash[:notice] = "Good job! Your post was updated!"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private
  def post_params
    params.permit(:title, :body)
  end
end
