class Projects
  
  def initialize
    @projects = []
    
    ld = Project.new('London, Daily')
    (1..5).each do |n|
      ld.add "http://photos.diotalevi.com.s3.amazonaws.com/ld/#{n}.jpg"      
    end
    
    lsa = Project.new('London Street Art')
    (1..10).each do |n|
      lsa.add "http://photos.diotalevi.com.s3.amazonaws.com/lst/#{n}.jpg"      
    end
    
    @projects << ld
    @projects << lsa
  end
  
  def list
    @projects
  end
  
  def select(safe_name)
    p = @projects.keep_if { |el| el.safe_name == safe_name }.first
  end
  
end