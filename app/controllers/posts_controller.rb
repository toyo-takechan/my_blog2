class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def index
  end

  def new
    @post = Post.new
  end

  def create
    # Post.create(post_params)
    # redirect_to root_url
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "投稿に成功しました!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def update
  end

  def destroy
  end

  def post_params
      params.require(:post).permit(:content)
    end
end
