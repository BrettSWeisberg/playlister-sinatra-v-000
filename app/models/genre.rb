class Genre < ActiveRecord::Base
  has_many :artists
  has_many :song_genres
  has_many :songs, through: :song_genres


  def slug
    self.name.downcase.strip.gsub(' ','-')
  end

  def self.find_by_slug(name)
    reg_name = name.titleize
    Genre.find_by_name(reg_name)
    end
end
