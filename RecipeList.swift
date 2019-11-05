public class RecipeList
{
	private list: Set<Recipe>()
	
	public display_recipe(with_name name:Strings)
	{
		
	}
	
	public display_recipe_names()
	{
		
	}
	
	public add_recipe(using item: Recipe)
	{
		
	}
	
	public remove_recipe(using name: String) -> Recipe
	{
		
	}
	
	/*Checks if the given recipe name is a member of the list
	Returns the boolean value of the statement.
	*/
	public is_member(using name: String) -> Bool
	{
		var bool_val = true
		var enumeration = list.enumerated()
		for item in enumeration
		{
			if(item.compare_names(name)!=0)
			{
				bool_val = false
			}
		}
		return bool_val
	}
	
	/*Checks if the list is empty
	*/
	public is_empty() -> Bool
	{
		list.isEmpty()
	}
}