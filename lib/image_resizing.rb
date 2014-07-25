require "image_resizing/version"
require "RMagick"

module ImageResizing

  class ImageResizer

    def initialize
    end

    def resize_by_width_and_height(width, height, input_file, output_file)
      throw_exception_when_input_and_out_files_are_not_given input_file, output_file

      begin
        image = Magick::Image.read(input_file).first
        resized_image = image.resize(width, height)
        resized_image.write(output_file)
      rescue Exception => e
        raise RuntimeError, e.message
      end

      true
    end

    def resize_by_ratio(ratio_in_percent, input_file, output_file)
      throw_exception_when_input_and_out_files_are_not_given input_file, output_file

      ratio = ratio_in_percent.to_f / 100.to_f

      begin
        image = Magick::Image.read(input_file).first
        resized_image = image.resize(ratio)
        resized_image.write(output_file)
      rescue Exception => e
        raise RuntimeError, e.message
      end

      true
    end

    private
    def throw_exception_when_input_and_out_files_are_not_given(input_file, output_file)
      raise RuntimeError, "Input file does not exist" if input_file.empty? || !file_exists?(input_file)
      raise RuntimeError, "Output file not given" if output_file.empty?
    end

    def file_exists?(file)
      return true if File.file?(file)
      false
    end

  end

end
