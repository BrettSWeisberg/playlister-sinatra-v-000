class Genre < ActiveRecord::Base
  has_many :artists, through: :songs
  has_many :song_genres
  has_many :songs, through: :song_genres


  def slug
    self.name.downcase.strip.gsub(' ','-')
  end

  def self.find_by_slug(name)
    Genre.all.find{|genre| genre.slug == name}
    end
end
