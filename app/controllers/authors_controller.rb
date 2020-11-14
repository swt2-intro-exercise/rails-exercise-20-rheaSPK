class AuthorsController < ApplicationController
  def new

  end

  def show
    @author = Author.find(params[:format])
  end

  def create
    @author = Author.new(author_params)

    @author.save
    redirect_to @author
  end

  private
  #benötigt um das Erzeugen von Autoren zu erlauben
    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
