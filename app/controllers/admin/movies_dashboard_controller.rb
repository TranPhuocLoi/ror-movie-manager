module Admin
  class MoviesDashboardController < AdminController
    def index
      @movies = Movie.all
    end
  end
end