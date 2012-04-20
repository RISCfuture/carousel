module Paperclip

  # Paperclip processor that uses ImageMagick to create rounded corners.
  #
  # Derived from https://github.com/kerinin/paperclip-rounded-corners

  class RoundCorners < Paperclip::Thumbnail
    # @private
    def parse_opts(key)
      opt = @options[:border_radius]
      opt.nil? ? nil : opt.to_i
    end

    # @return [String] The ImageMagick command that rounds an image's corners.

    def transformation
      trans = " \\( +clone  -threshold -1 "
      trans << "-draw 'fill black polygon 0,0 0,#{@radius} #{@radius},0 fill white circle #{@radius},#{@radius} #{@radius},0' "
      trans << "\\( +clone -flip \\) -compose Multiply -composite "
      trans << "\\( +clone -flop \\) -compose Multiply -composite "
      trans << "\\) +matte -compose CopyOpacity -composite "
      trans
    end

    # Performs the ImageMagick corner-roundage.
    #
    # @param [Paperclip::Attachment] dst The Paperclip image.
    # @return [Paperclip::Attachment] `dst`.

    def round_corners(dst)
      command = "\"#{ File.expand_path(@thumbnail.path) }[0]\" #{ transformation } \"#{ File.expand_path(dst.path) }\""
      Paperclip.run('convert', command)
      dst
    end

    # @private
    def initialize(file, options = { }, attachment = nil)
      super file, options, attachment

      @radius = options[:border_radius]
      @process = @radius
    end

    # @private
    def make
      @thumbnail = super

      if @process
        @width  = Paperclip::Geometry.from_file(@thumbnail).width.to_i
        @height = Paperclip::Geometry.from_file(@thumbnail).height.to_i

        dst = Tempfile.new([@basename, @format].compact.join("."))
        dst.binmode

        return round_corners(dst)
      else
        return @thumbnail
      end
    end
  end
end
