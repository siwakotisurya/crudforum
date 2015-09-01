class PostsController < ApplicationController
  
  def index
  @posts = Post.all
  end

  def show
  @post = Post.find(params[:id])
  end

  def create
  @posts = Post.new(set_db)
  @posts.save
  end

  def new
  end

  def edit
  @post = Post.find(params[:id])
  end

  def update
    @post = Post.update(set_edit_db)
  end

  def delete
    
  end

  def destroy
 @post = Post.find(params[:id])
  @post.destroy

  end

  private 
  def set_db
  params.require(:posts).permit(:topic, :user_name,:user_post)
  end

  def set_edit_db
  parmas.require(:post).permit(:topic, :user_post)
  end

end
