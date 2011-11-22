class Projects
  
  def initialize
    @projects = []
    lsa = Project.new('London Street Art')
    lsa.add('http://photos.diotalevi.com.s3.amazonaws.com/lst/1.jpg')
    (2..10).each do |n|
      lsa.add "http://photos.diotalevi.com.s3.amazonaws.com/lst/#{n}.jpg"      
    end
    @projects << lsa
  end
  
  def list
    @projects
  end
  
  def select(safe_name)
    p = @projects.keep_if { |el| el.safe_name == safe_name }.first
  end
  
end