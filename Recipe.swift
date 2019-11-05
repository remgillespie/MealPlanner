import Ingredient

public class Recipe
{
	//list of ingredients or an array of ingredients, if an array will need to resize dynamically
	private var meal: String
	private var ingredient = Ingredient?
	private var directions: ""
	
	public init(with meal_name: String)
	{
		self.meal = meal_name
		self.ingredients = ingredients
	}
	
	public init(with meal_name: String, using directions: String)
	{
		self.meal = meal_name
		self.directions = directions
	}
	
	/*Overrides the class variable meal with name.
	Ideally we would like for interactive change of a string so as to not
		constantly overwrite, but modify instead.*/
	public func set_meal_name(with name: String)
	{
		self.meal = name
	}
	
	/*Sets an ingredient into the list if it is not already present, if it is present the user with an
		option to replace it.
	Ideally we would like for interactive change of a string so as to not
		constantly overwrite, but modify.*/
	public func set_ingredients(with item: Ingredient)
	{
		self.ingredient = item
	}
	
	/*Overrides the class variable directions with text.
	Ideally we would like for interactive change of a string so as to not
		constantly overwrite, but modify instead.*/
	public func set_directions(with text: String)
	{
		self.directions = text
	}
	
	/*Returns the class variable name meal
	*/
	public func get_meal_name() -> String
	{
		return self.meal
	}
	
	/*Returns the class variable ingredient
	*/
	public func get_ingredient() -> Ingredient
	{
		return self.ingredient
	}
	
	/*Returns the directions otherwise states that there aren't any*/
	public func get_directions() -> String
	{
		return (directions!="") ? self.directions : "No directions"
	}
	
	/*Compares difference in letters of a string
		traditional comparator return values*/
	public func compare_names(_name: String) -> Int
	{
		var name1 = self.meal.enumerated()
		var name2 = name.enumerated()
		var retval = 0
		
		for (letter1, letter2) in (name1, name2)
		{
			if((retval = letter1 - letter2) != 0)
			{
				break
			}
		}
		return retval
	}
}



