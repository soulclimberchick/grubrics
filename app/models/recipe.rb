class Recipe
  attr_reader :title, :image, :url

  def initialize(attrs)
    @url = attrs["url"]
    @title = attrs["label"]
    @image = attrs["image"]
  end
end
