class HomeController < ApplicationController
  before_action :set_movie

  def index; end

  private

  def set_movie
    @movies = Movie.order('created_at DESC')
  end
end