class SearchResult

  attr_accessor :result_hash, :image

  def initialize(result_hash, options = {})
    @result_hash = result_hash
    @image = ResultImage.new(result_hash["image"])
  end

  def content
    result_hash["content"]
  end

  def title
    result_hash["title"]
  end

  def url
    result_hash["unescapedUrl"]
  end

  def location
    result_hash["location"]
  end

  def publisher
    result_hash["publisher"]
  end

  def published_date
    result_hash["publishedDate"]
  end

  def related_stories
    result_hash["relatedStories"]
  end

  def display_image
    image.display_image
  end

  def allowed_to_show_image?
    image.allowed_to_show?
  end

end