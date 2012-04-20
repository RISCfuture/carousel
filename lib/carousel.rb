require 'carousel/paperclip/round_corners' if defined?(Paperclip)

# Rails engine for the Carousel plug-in.

class Carousel < Rails::Engine

  # Returns options for the `has_attached_file` method to include a
  # Carousel-compatible style. You can override any options as necessary using
  # `additional`.
  #
  # @example Basic example with additional styles
  #   has_attached_file Carousel.paperclip_options(
  #     styles: {
  #       another: '512x512'
  #     }
  #   )
  #
  # @example Overriding carousel border radius
  #   has_attached_file Carousel.paperclip_options(
  #     styles: { carousel: { border_radius: 5 } }
  #   )
  #
  # @param [Hash] additional Additional styles or other Paperclip options to
  #   pass to `has_attached_file`, or overrides for the options this method adds
  #   (see the source).
  # @return [Hash] Options to pass to `has_attached_file`.

  def self.paperclip_options(additional={})
    additional[:processors] = Array.wrap(additional[:processors])
    additional[:processors] << :round_corners

    additional[:styles]                            ||= {}
    additional[:styles][:carousel]                 ||= {}
    additional[:styles][:carousel][:geometry]      ||= '140x100#'
    additional[:styles][:carousel][:format]        ||= :png
    additional[:styles][:carousel][:border_radius] ||= 8

    additional
  end
end
