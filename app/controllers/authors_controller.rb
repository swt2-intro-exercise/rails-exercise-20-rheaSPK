class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:format])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render 'new'
    end
  end

  #the page to edit an author
  def edit
    @author = Author.find(params[:format])
  end

  #the actual update process
  def update
    @author = Author.find(params[:format])

    if @author.update(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  private
  #benötigt um das Erzeugen von Autoren zu erlauben
    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
