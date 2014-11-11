class PostsController < ApplicationController
  layout 'overall'

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
    #post.save
  end

  def create
    post = Post.new(post_params)
    time = Time.now
    post.created_at = time
    post.updated_at = time
    redirect_to action: :index if post.save
  end

  def show
    @post = Post.first()
  end

  def destroy
    post = Post.find_by_id(params[:id])
    #post.flash[:success] = 'post successfully deleted' post.destroy
    
    #render ajax
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.                                                                 
  def post_params
    params.require(:post).permit(:body)
  end
end
