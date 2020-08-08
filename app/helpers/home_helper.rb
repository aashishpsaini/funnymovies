module HomeHelper
  def url(movie)
    "https://www.youtube.com/embed/#{movie.video_id}"
  end
end
