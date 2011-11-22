class Photo
  
  attr_reader :url, :comment
  
  def initialize(url, comment = nil)
    @url = url
    @comment = comment
  end
  
end

class Project
  
  attr_reader :name, :photos  
  
  def initialize(name)
    @name = name
    @photos = []
  end
  
  def safe_name
    safe_name = @name.gsub(" ", "_")
    safe_name = safe_name.gsub(",", "_")    
  end
  
  def add(photo_url, photo_comment = nil)
    @photos << Photo.new(photo_url, photo_comment)
  end
  
end

