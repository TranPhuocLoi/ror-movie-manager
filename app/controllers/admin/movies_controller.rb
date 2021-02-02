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

    def show
      @movie = Movie.find(params[:id])
    end
    
    def edit
      @movie = Movie.find(params[:id])
    end  

    def update
      @movie = Movie.find(params[:id])
      if @movie.update(admin_movie_params)
        redirect_to admin_movie_path(@movie)
      else
        render 'edit'
      end
    end

    def destroy
      @movie = Movie.find(params[:id])
      @movie.destroy
      redirect_to admin_root_path
    end

    
    private
      def admin_movie_params
        params.require(:movie).permit(:title, :description, :genres, :original_language, :photo)
      end
  end
end