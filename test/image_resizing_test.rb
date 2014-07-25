require "test_helper"

class ImageResizingTest < Test::Unit::TestCase
  def test_successful_resizing_of_image_by_width_and_height
    ir = create_image_resizer
    assert ir.resize_by_width_and_height(50, 50, current_dir + "/1.jpg", current_dir + "/resized_by_width_and_height.jpg")
  end

  def test_successful_resizing_of_image_by_ratio_in_percent
    ir = create_image_resizer
    assert ir.resize_by_ratio(50, current_dir + "/1.jpg", current_dir + "/resized_by_ratio.jpg")
  end

  def test_raising_runtime_error_exception_when_input_file_not_given
    ir = create_image_resizer
    assert_raise RuntimeError do
      ir.resize_by_width_and_height(100, 100, "", current_dir + "/resized_by_ratio.jpg")
    end
  end

  def test_raising_runtime_error_exception_when_output_file_not_given
    ir = create_image_resizer
    assert_raise RuntimeError do
      ir.resize_by_width_and_height(100, 100, current_dir + "/1.jpg", "")
    end
  end

  def test_raising_runtime_error_exception_when_input_file_does_not_exist
    ir = create_image_resizer
    assert_raise RuntimeError do
      ir.resize_by_width_and_height(100, 100, current_dir + "/not_existing_file.jpg", current_dir + "/resized_by_ratio.jpg")
    end
  end


  private
  def create_image_resizer
    ImageResizing::ImageResizer.new
  end

  def current_dir
    File.expand_path File.dirname(__FILE__)
  end
end