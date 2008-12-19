require 'image_size'

module FourSidedFrame
  def four_sided_frame options={}, &block
    raise ArgumentError, 'Missing block' unless block_given?
    
    options = {
      :full_frame=>'full-frame.png',
      :bottom_left=>'bottom-left.png',
      :top_right=>'top-right.png',
      :base_path=>'images'
    }.merge(options)
    
    bl_dimensions = ImageSize.dimensions File.join(options[:base_path], options[:bottom_left])
    tr_dimensions = ImageSize.dimensions File.join(options[:base_path], options[:top_right])
    raise 'Corner image sizes not the same' unless bl_dimensions == tr_dimensions
    raise 'Corner images need to be square' unless bl_dimensions.first == bl_dimensions.last
    image_size = bl_dimensions.first
    
    concat content_tag(:div,
      content_tag(:div,
        content_tag(:div,
          content_tag(:div,
            content_tag(:div,
              capture(&block),
            :class=>'content', :style=>"position: relative; left: #{image_size/2}px; top: #{image_size/2}px"),
          :class=>'top-left', :style=>"position: relative; left: -#{image_size}px; top: -#{image_size}px; background: url(/#{options[:base_path]}/#{options[:full_frame]}) left top no-repeat"),
        :class=>'bottom-right', :style=>"background: url(/#{options[:base_path]}/#{options[:full_frame]}) right bottom no-repeat"),
      :class=>'bottom-left', :style=>"padding: #{image_size}px 0 0 #{image_size}px; background: url(/#{options[:base_path]}/#{options[:bottom_left]}) left bottom no-repeat"),
    :class=>'top-right', :style=>"position: absolute; background: url(/#{options[:base_path]}/#{options[:top_right]}) right top no-repeat", :id=>options[:id]), block.binding
  end
end

ActionView::Base.send :include, FourSidedFrame