public class RecipeList
{
	private list: Set<Recipe>()
	
	/*Inserts the item into the list
	*	option=1: Inserts the item unconditionally
	*	option=2: Insert the item if it isn't already a member
	*	Returns the boolean value of the success
	*/
	public func add_recipe(_item: Recipe, _option: Int) -> Bool
	{
		var bool_val = false
		if(option)/*Option 1*/
		{
			list.update(item)
			bool_val = true
		}
		else
		{
			bool_val = (list.insert(item)).0
		}
		return bool_val
	}
	
	/*Removes the specified ingredient name if it is present within the list
	*	Returns the item if it was in the list, otherwise returns nil
	*/
	public func remove_recipe(_name: String) -> Recipe?
	{
		for (index, item) in list.enumerated()
		{
			if(!item.compare(name))/*The same item*/
			{
				return list.remove(item)
			}
		}
		return nil
	}
	
	/*Returns the list as an EnumeratedSequence which takes the form of a
	* list containing an (index, value) pair
	*/
	public func get_list() -> EnumeratedSequence<Set<Recipe>>
	{
		return list.enumerated()
	}
	
	/*Checks if the given recipe name is a member of the list
	Returns the boolean value of the statement.
	*/
	public func is_member(_name: String) -> Bool
	{
		var bool_val = false
		for item in list.enumerated()
		{
			if(!item.compare(name))/*Item is in list*/
			{
				bool_val = true
			}
		}
		return bool_val
	}
	
	/*Checks if the list is empty
	*/
	public func is_empty() -> Bool
	{
		list.isEmpty()
	}
}