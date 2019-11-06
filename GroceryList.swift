import Ingredient

public class GroceryList
{
	private var list = Set<Ingredient>()?
	public var size = 0
	
	public init()
	{
		list = Set<Ingredient>
		size = 0
	}
	
	public init(new_list: Set<Ingredient>, list_size: Int)
	{
		list = new_list
		size = list_size
	}
	
	/*Adds an item to the grocery list and increments the size of the list
	* if the item did not already exist in the list.
	*	Returns true upon successful insertion, false otherwise.
	*/
	public func add_item(item: Ingredient) -> Bool
	{
		var valid_insert = list.insert(item)
		if(valid_insert.0==true)
		{
			self.size += 1
		}
		return valid_insert.0
	}
	
	/*Removes an item from the list.
	*	Returns nil if the item was not in the list, otherwise the item is returned
	*/
	public func remove_item(name: String) -> Ingredient?
	{
		for (index, item) in list.enumerated()
		{
			if(!item.compare(name))/*In list*/
			{
				self.size -= 1
				return list.remove(item)
			}
		}
		return nil
	}
	
	public func get_list() -> EnumeratedSequence<Set<Ingredient>>
	{
		return list.enumerated()
	}
	
	public func is_member(_name: String) -> Bool
	{
		var bool_val = false
		for (index, item) in list
		{
			if(item.compare(name))/*In list*/
			{
				bool_val = true 
			}
		}
		return bool_val
	}
	
	public func is_empty() -> Bool
	{
		return list.isEmpty()
	}
}
