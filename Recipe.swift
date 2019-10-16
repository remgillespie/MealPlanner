public class Recipe
{
	var directions: String?
	//list of ingredients or an array of ingredients, if an array will need to resize dynamically
	var meal: String
	var Ingredients: String

	/*Returns the directions otherwise states that there aren't any*/
	func get_directions() -> String
	{
		return (directions!=nil) ? self.directions : "No directions"
	}
}