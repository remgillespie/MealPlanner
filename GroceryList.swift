/*Note: This class is incomplete*/

public class GroceryList
{
	private var list = Set<(Ingredient, Bool)>()
	public var size = 0
	private var notes = ""
	
	/*Adds an item to the grocery list and increments the size of the list
	if the item did not already exist in the list.
	Returns true upon successful insertion, false otherwise.
	*/
	public func add_item(to_list item: Ingredient) -> Bool
	{
		var valid_insert = list.insert((Ingredient,0))
		if(valid_insert.0==true)
		{
			self.size += 1
		}
		return valid_insert.0
	}
	
	/*Removes an item from the list.
	Returns nil if the item was not in the list, otherwise the item is returned
	*/
	
	//not done
	public func remove_item(from_list item: Ingredient) -> Ingredient?
	{
		return list.remove()
	}
	
	/*Checks an item off a grocery list
	*/
	
	//not done
	public check_item(from_list item:Ingredient) -> Bool
	{
		return 0
	}
	
	public display_list()
	{
		var current = 0
		
	}
	
	/*Adds/modifies notes
		should allow for interactive input*/
	public modify_notes()
	{
		
	}
}