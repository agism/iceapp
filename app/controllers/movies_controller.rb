class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end
  
  def show
    id = params[:id]
    @movie = Movie.find(id)
  end
  
  def new
  end
  
 
  def create
    
    # preparation
    #release_date = DateTime.new( params[:movie]["release_date(1i)"].to_i, 
    #                             params[:movie]["release_date(2i)"].to_i,
    #                             params[:movie]["release_date(3i)"].to_i )
                                 
    # create an active record object
    #@movie = Movie.new
    #@movie.title = params[:movie][:title]
    #@movie.rating = params[:movie][:rating]
    #@movie.release_date = release_date
    #@movie.save
    
    @movie = Movie.new(params[:movie])
    @movie.save
   # debugger
    redirect_to movies_path
  end






  
end