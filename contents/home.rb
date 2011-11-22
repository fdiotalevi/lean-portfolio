class Home
  
  def initialize
    @photos = []
    @photos << 'http://photos.diotalevi.com.s3.amazonaws.com/home/DSC_0168.jpg'
    @photos << 'http://photos.diotalevi.com.s3.amazonaws.com/home/DSC_0164.jpg'
  end
  
  def one 
    @photos[rand(@photos.length)]
  end
  
end