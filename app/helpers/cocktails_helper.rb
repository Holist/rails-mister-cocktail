module CocktailsHelper

  def image_link(cocktail)
    url = cocktail.photo? ? cocktail.photo.path : ''
    cl_image_path url, width: 350, height: 200, crop: :fill
  end

end
