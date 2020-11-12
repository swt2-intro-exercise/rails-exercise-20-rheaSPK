class AuthorsController < ApplicationController
  def new

  end

  def show

  end

  def create
    @author = Author.new(author_params)

    @author.save
    redirect_to root_path
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
