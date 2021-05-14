require 'open-uri'
require 'json'

class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true
  validates :overview, presence: true

  def self.scrap_API
    url = 'http://tmdb.lewagon.com/movie/top_rated'
    movie_serialized = URI.open(url).read
    movie = JSON.parse(movie_serialized)
    results = movie['results']
    results.each do |res|
      create(title: res['title'], overview: res["overview"])
    end
  end
end
