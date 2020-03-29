class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  
  def self.count
    @@count
  end
  
  def self.genres
   @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
 def self.genre_count
   g_count = {}
   @@genres.each do |el|
     if g_count[el]
       g_count[el] += 1
     else 
       g_count[el] = 1
     end
   end
   g_count
 end

   
    attr_accessor :name, :artist, :genre 
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre 
    @@artists << artist
  end
  
  
  
end