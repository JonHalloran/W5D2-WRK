class PostsController < ApplicationController
  def new
    @post = Post.new
    @subs = Sub.all
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user

    if @post.save
      params[:post][:sub_ids].each do |sub_id|
        Postsub.create(sub_id: sub_id, post_id: @post.id)
      end

      redirect_to post_url(@post)
    else
      flash[:errors] = @post.errors.full_messages
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @subs = Sub.all
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post && @post.update(post_params)
      redirect_to post_url(@post)
    else
      flash[:errors] = @post.errors.full_messages
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = curent_user.posts.find(params[:id])

    if @post && @post.delete
      redirect_to subs_url
    else
      redirect_to post_url(@post)
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :content, :sub_ids)
  end

end
