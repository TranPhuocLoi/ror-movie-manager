module Admin
  class MoviesDashboardController < AdminController
    
    def index
      @movies = Movie.all
    end
    def new
      @movie = Movie.new
    end 
    def create
      @movies = Movie.create!(title:params[:title], description:params[:description], genres:params[:genres], original_language:params[:original_language])
      redirect_to admin_root_path
    end
    
  end
end