class Movie < ActiveRecord::Base    
    def self.create_with_title(title)
    movie = Movie.new(title: title)
    movie.save
    movie
  end
  def self.first_movie
    Movie.first
  end
  def self.last_movie
    Movie.last
  end
  def self.movie_count
    Movie.count 
  end
  def self.find_movie_with_id(id)
    Movie.find(id)
  end
  def self.find_movie_with_attributes(attribute)
    Movie.find_by(attribute)
  end
  def self.find_movies_after_2002
       Movie.where('release_date > ?', 2002)
  end
  def update_with_attributes(attribute)
    update(attribute)
  end
  def self.update_all_titles(titles)
    Movie.update_all(title: titles)
  end
  def self.delete_by_id(id)
    movie = self.find(id)
    movie.destroy
  end
  def self.delete_all_movies
    self.destroy_all
  end

end

