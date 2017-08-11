module CocktailsHelper

  def image_link(cocktail)
    url = cocktail.photo? ? cocktail.photo.path : 'http://www.bar-a-cocktail.com/img/visuel1.jpg'
    cl_image_path url, width: 350, height: 200, crop: :fill
  end

end
