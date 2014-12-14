class ResultImage

  attr_reader :image_hash

  def initialize(image_hash, options = {})
    @image_hash = image_hash
  end

  def large_image_url
    image_hash["url"] if image_hash
  end

  def small_image_url
    image_hash["tbUrl"] if image_hash
  end

  def display_image
    large_image_url.present? ? large_image_url : small_image_url
  end

  def width
     image_hash["tbWidth"] if image_hash
  end

  def height
     image_hash["tbHeight"] if image_hash
  end

  def aspect_ratio
    width.to_f / height.to_f
  end

  def vertical
    aspect_ratio < 1
  end

  def horizontal
    aspect_ratio >= 1
  end

  def allowed_to_show?
    display_image.present? && horizontal
  end

end