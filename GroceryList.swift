
public class GroceryList
{
	
	private var list = Set<Ingredient>()
	public var size = 0
	
	public init()
	{
		self.size = 0
	}
	
	public init(new_list: Set<Ingredient>, list_size: Int)
	{
		self.list = self.list.union(new_list)
		self.size = list_size
	}
	
	/*Adds an item to the grocery list and increments the size of the list
	* if the item did not already exist in the list.
	*	Returns true upon successful insertion, false otherwise.
	*/
	public func add_item(item: Ingredient) -> Bool
	{
		let valid_insert = self.list.insert(item)
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
		for (index, item) in self.list.enumerated()
		{

			if(!item.get_name().elementsEqual(name))/*In list*/
			{
				self.size -= 1
				return self.list.remove(item)
			}
		}
		return nil
	}
	
	/*Returns the grocery list
	*/
	public func get_list() -> EnumeratedSequence<Set<Ingredient>>
	{
		return self.list.enumerated()
	}
	
	/*Checks to see if the name is common to any elements in the list
	*/
	public func is_member(name: String) -> Bool
	{
		var bool_val = false
		for (index, item) in self.list.enumerated()
		{
			bool_val = item.get_name().elementsEqual(name)
			if(bool_val)/*In list*/
			{
				break
			}
		}
		return bool_val
	}
	
	/*Checks to see if the list is empty
	*/
	public func is_empty() -> Bool
	{
		return self.list.isEmpty
	}
}
