require 'image_sizes/png'
require 'image_sizes/gif'
require 'image_sizes/jpg'

module ImageSize
  def self.dimensions image_path
    image_path = File.join(Rails.root, 'public', 'images', image_path)
    case image_type image_path
      when :png
        ImageSizes::Png.dimensions(image_path)
      when :gif
        ImageSizes::Gif.dimensions(image_path)
      when :jpg
        jpg = ImageSizes::Jpg.new image_path
        [jpg.width, jpg.height]
    end
  end
  
  def self.image_type image_path
    image_path.split('.').last.downcase.to_sym
  end
end