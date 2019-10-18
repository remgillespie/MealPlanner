/*Note: This class is 
public class GroceryList
{
	private var list = Set<Ingredient>()
	var size = 0
	
	/*Adds an item to the grocery list and increments the size of the list
	if the item did not already exist in the list.
	Returns true upon successful insertion, false otherwise.
	*/
	func add_item(to_list item: Ingredient)-> Bool
	{
		var valid_insert = list.insert(Ingredient)
		if(valid_insert.0==true)
		{
			self.size += 1
			
		}
		return valid_insert.0
	}
	
	/*Removes an item from the list.
	Returns nil if the item was not in the list, otherwise the item is returned
	*/
	func remove_item(from_list item: Ingredient) -> Ingredient?
	{
		return list.remove(item)
	}
}