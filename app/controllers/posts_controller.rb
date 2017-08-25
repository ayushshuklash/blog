class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post     = Post.new
    @category = Category.all
  end

  def create
    @post = Post.new(params[:post])
      if @post.save
        redirect_to posts_path, :notice => "AAPKA POST ADD HO GAYA HAIN"
      else
        render"new"
    end
  end

    def destroy
      @post=Post.find(params[:id])
      @post.destroy
      redirect_to posts_path, :notice => "DELETE KAR DIA"
    end

    def edit
      @post=Post.find(params[:id])
    end

    def show
      @post=Post.find(params[:id])
    end
    def update
     @post=Post.find(params[:id])
     if @post.update_attributes(params[:post])
       redirect_to posts_path :notice =>"BHAI AAPKA POST UPDATE HOGYA HAIN"
     else
       render "edit"
     end
    end

end
