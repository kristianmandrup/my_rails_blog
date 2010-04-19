class PostsController < ApplicationController        
  respond_to :html, :atom

  before_filter :authenticate_admin!, :except => [:index, :show]
  before_filter :get_post, :only => [:show, :edit, :update, :destroy]

  def get_post
    @post = Post.find_by_id(params[:id])
  end

  def index
    @posts = Post.latest_published
    puts @posts
    respond_with @posts
  end

  def show    
    respond_with @post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    if @post.save      
      redirect_to posts_path
    else
      render 'new'
    end
  end
  
  def edit
  end   
  
  def update
    if @post.update_attributes(params[:post])
      redirect_to posts_path    
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    redirect_to posts_path, :notice => "#{@post.title} was deleted"        
  end
end
