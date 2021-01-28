module Admin
  class MoviesController < AdminController

    def new
      @movie = Movie.new
    end  

    def create
      @movie = Movie.new(admin_movie_params)
      @movie.save
      redirect_to admin_movie_path(@movie)
    end

    
    private
      def admin_movie_params
        params.require(:movie).permit(:title, :description, :genres, :original_language)
      end
  end
end