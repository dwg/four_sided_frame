module ImageSizes::Gif
  def self.dimensions image_path
    IO.read(image_path)[6..10].unpack('SS')
  end
end