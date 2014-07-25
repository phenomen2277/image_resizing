# ImageResizing

An easy way to resize images using ImageMagick with Ruby.

## Installation

It's based on ImagaMagic & it has to be installed in your OS. What i did to install it on OSX is to type...

    brew install imagemagick


Once the ImagaMagick is installed, install this gem:

```ruby
gem 'image_resizing'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install image_resizing

## Usage

```uby
#Start by requiring...
require "image_resizing"

#Create an instance of the class...
ir = ImageResizing::ImageResizer.new

#Now lets resize an image by setting the width & height of it
#The first argument is the new width to set
#Second is the height
#The third is the path of the image file to resize
#And the fourth is The destination path of the newly resized page

ir.resize_by_width_and_height(100, 70, input.jpg, resized_output.jpg)

#And lets resize the other image by the ratio in percent
#The first argument is the ratio in %.
#In the example below, whe chose to minimize the size with 50 % of the original size
#The first parameter is the ratio in %
#The second is the path of the image file to resize
#The third is The destination path of the newly resized page

ir.resize_by_ratio(50, input2.jpg, resized_output2.jpg)
```

