class PostsController < ApplicationController

before_action :get_post, only: [:show, :edit, :update, :destroy]
    #CRUD = create, read, update, destroy/delete
#view
def new
    @post = Post.new
end

def create
    @post = Post.new(post_params)
    if @post.save
        redirect_to @post, notice: "Post has been created"
    else
        redirect_to new_post_path, notice: "There are some problems"
    end    
end
#view
def index
    @posts = Post.all
    @posts.reload
end

#view
    def edit
       # @post = Post.find(params[:id])
    end

    def update
        #@post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post, notice: "Post has been updated"
        else    
            redirect_to edit_post_path(post), notice: "Problem with the edit"
        end
    end

    def destroy
        #@post = Post.find(params[:id])
        if @post.destroy
            flash[:success] = "Post eliminado correctamente."
            redirect_to posts_path
          else
            flash[:error] = "No se pudo eliminar el post."
            redirect_to @post
        end
    end

    #view
    def show
       # @post = Post.find(params[:id])
    end

    private
    def post_params
        params.required(:post).permit(:title,:body)
    end

    def get_post
        @post = Post.find(params[:id])
    end

end