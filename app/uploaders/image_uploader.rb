class ImageUploader < CarrierWave::Uploader::Base
  attr_reader :width, :height
  before :cache, :capture_size
  storage :gcloud
  def capture_size(file)
    if version_name.blank?
      if file.path.nil?
        img = ::MiniMagick::Image::read(file.file)
        @width = img[:width]
        @height = img[:height]
      else
        @width, @height = `identify -format "%wx %h" #{file.path}`.split(/x/).map{|dim| dim.to_i }
      end
    end
  end
end