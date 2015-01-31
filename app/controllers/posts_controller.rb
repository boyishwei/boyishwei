class PostsController < ApplicationController
  layout 'overall'

  def index
    page = params[:page] 

    #@posts = Post.per(10).all.order('created_at DESC')
    @posts = Post.page(page).order('created_at DESC')
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

    if !post.save
      flash.now[:post_error] = 'Pust nullable not allowed buddy' #unless post.save
    else
    end
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
