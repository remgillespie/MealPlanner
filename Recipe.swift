import Ingredient

public class Recipe
{
	//list of ingredients or an array of ingredients, if an array will need to resize dynamically
	private var meal = ""
	private var list = nil
	private var directions = ""
	
	public init(meal_name: String)
	{
		self.meal = meal_name
		self.list = Set<Ingredients>?
	}
	
	//need to check that we can pass Sets in this fashion
	public init(meal_name: String, ingredients: Set<Ingredient>)
	{
		self.meal = meal_name
		self.list = ingredients
	}
	
	public init(meal_name: String, ingredients: Set<Ingredients>, directions: String)
	{
		self.meal = meal_name
		self.list = ingredients
		self.directions = directions
	}
	
	/*Overrides the class variable meal with name.
	Ideally we would like for interactive change of a string so as to not
		constantly overwrite, but modify instead.*/
	public func set_meal_name(name: String)
	{
		self.meal = name
	}
	
	/*Adds an ingredient(item) into the list.
	*	option = 1: Adds the item into the list unconditionally
	*	option = 2: Adds the item into the list only if it isn't present
	*	Returns the boolean value of the successful insertion
	*/
	public func add_ingredients(item: Ingredient, option: Int) -> Bool
	{
		var bool_val = false
		if(option)/*Option 1: Always places item into the list*/
		{
			list.update(item)
			bool_val = true
		}
		else/*Option 2*/
		{
			bool_val = (list.insert(item)).0
		}
		return bool_val
	}
	
	/*Overrides the class variable directions with text.
	Ideally we would like for interactive change of a string so as to not
		constantly overwrite, but modify instead.*/
	public func set_directions(text: String)
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
	public func get_ingredients() -> EnumeratedSequence<Set<Ingredient>>
	{
		return self.list.enumerated()
	}
	
	/*Returns the directions otherwise states that there aren't any*/
	public func get_directions() -> String
	{
		return (directions!="") ? self.directions : "No directions"
	}
	
	/*Compares difference in letters of a string
		traditional comparator return values*/
	public func compare(name: String) -> Bool
	{
		var retval = true
		for (letter1, letter2) in zip(self.meal, name)
		{
			if((Int(String(letter1))! - Int(String(letter2))!) != 0)
			{
				retval = false
				break
			}
		}
		return retval
	}
	
	public func is_member(item: Ingredient) -> Bool
	{
		return list.contains(item)
	}
}



