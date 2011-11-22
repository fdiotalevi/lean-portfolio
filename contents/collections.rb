class Projects
  
  def initialize
    @projects = []
    lsa = Project.new('London Street Art')
    lsa.add('http://photos.diotalevi.com.s3.amazonaws.com/home/DSC_0168.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
    lsa.add 'http://photos.diotalevi.com.s3.amazonaws.com/home/DSC_0164.jpg'   
    lsa.add 'http://photos.diotalevi.com.s3.amazonaws.com/home/DSC_0164.jpg'        
    @projects << lsa
  end
  
  def list
    @projects
  end
  
  def select(safe_name)
    p = @projects.keep_if { |el| el.safe_name == safe_name }.first
  end
  
end