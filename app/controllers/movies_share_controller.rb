class MoviesShareController < ApplicationController
  def index
  end

  def create
    @movie = current_user.movies.build(
      video_id: get_id_from_url,
      title: title,
      description: description
    )

    if @movie.save
      redirect_to root_path, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  def new
    @movie = Movie.new
  end

  private

  def movies_share_params
    params.require(:movie).permit(:video_id)
  end

  def get_id_from_url
    movies_share_params[:video_id].split(Movie::REGEX)[2]
  end

  def movie_details
    Yt::Video.new id: get_id_from_url
  end

  def title
    movie_details.title
  end

  def description
    movie_details.description
  end
end