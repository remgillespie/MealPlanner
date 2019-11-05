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
	
	/*Removes the specified ingredient name if it is present within the list
	*	Returns the item if it was in the list, otherwise returns nil
	*/
	public remove_recipe(using name: String) -> Recipe
	{
		for (index, item) in list.enumerated()
		{
			if(!item.compare_names(name))/*The same item*/
			{
				return list.remove(item)
			}
		}
		return nil
	}
	
	/*Checks if the given recipe name is a member of the list
	Returns the boolean value of the statement.
	*/
	public is_member(using name: String) -> Bool
	{
		var bool_val = true
		for item in list.enumerated()
		{
			if(item.compare_names(name))/*Item is in list*/
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