public class RecipeList
{
	private list: Set<Recipe>()
	
	public display_recipe(with_name name:Strings)
	{
		
	}
	
	public display_recipe_names()
	{
		var enumeration = list.enumerated()
		for item in enumeration
		{
			print("\(item.get_meal_name)")
			
			print("\(item.get_directions)")
		}
	}
	
	public add_recipe(using item: Recipe)
	{
		
	}
	
	public remove_recipe(using name: String) -> Recipe
	{
		
	}
	
	public isMember() -> Bool
	{
		
	}
	
	public isEmpty() -> Bool
	{
		
	}
}