class ListsController < ApplicationController

  def index
    @lists = List.all
    @movies = Movie.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
    @moviesforlist = Movie.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
    # raise
    # redirects to the created list (FAILED - 6)
    # /lists/10
    # assigns a newly created but unsaved list as @list (FAILED - 6)
    # re-renders the 'new' template (FAILED - 7)
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
