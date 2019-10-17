public class Recipe
{
	private var directions: String?
	//list of ingredients or an array of ingredients, if an array will need to resize dynamically
	private var meal: String
	private var ingredients = nil
	
	public init(with meal_name: String, with ingredients: Ingredient)
	{
		self.meal = meal_name
		self.ingredients = ingredients
	}
	public init(with meal_name: directions
	/*Returns the directions otherwise states that there aren't any*/
	func get_directions() -> String
	{
		return (directions!=nil) ? self.directions : "No directions"
	}
}