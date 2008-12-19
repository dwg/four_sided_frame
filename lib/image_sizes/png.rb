module ImageSizes::Png
  def self.dimensions image_path
    IO.read(image_path)[0x10..0x18].unpack('NN')
  end
end