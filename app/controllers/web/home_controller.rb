module Web
  class HomeController < WebController
    def index
      @movies = Movie.all
    end
  end
end