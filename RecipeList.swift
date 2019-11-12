
public class RecipeList
{
	private var list = Set<Recipe>()
	
	public init()
	{
	}
	
	public init(new_list: Set<Recipe>)
	{
		self.list = self.list.union(new_list)
	}
	/*Inserts the item into the list
	*	option=1: Inserts the item unconditionally
	*	option=2: Insert the item if it isn't already a member
	*	Returns the boolean value of the success
	*/
	public func add_recipe(item: Recipe, option: Int) -> Bool
	{
		var bool_val = false
		if(option==1)/*Option 1*/
		{
			self.list.update(with: item)
			bool_val = true
		}
		else
		{
			bool_val = (self.list.insert(item)).0
		}
		return bool_val
	}
	
	/*Removes the specified ingredient name if it is present within the list
	*	Returns the item if it was in the list, otherwise returns nil
	*/
	public func remove_recipe(name: String) -> Recipe?
	{
		for (index, item) in self.list.enumerated()
		{
			if(item.get_meal_name().elementsEqual(name))/*The same item*/
			{
				return self.list.remove(item)
			}
		}
		return nil
	}
	
	/*Returns the list as an EnumeratedSequence which takes the form of a
	* list containing an (index, value) pair
	*/
	public func get_list() -> EnumeratedSequence<Set<Recipe>>
	{
		return self.list.enumerated()
	}
	
	/*Checks if the given recipe name is a member of the list
	Returns the boolean value of the statement.
	*/
	public func is_member(name: String) -> Bool
	{
		var bool_val = false
		for (index, item) in self.list.enumerated()
		{
      bool_val = item.get_meal_name().elementsEqual(name)
			if(bool_val)/*Item is in list*/
			{
				break
			}
		}
		return bool_val
	}
	
	/*Checks if the list is empty
	*/
	public func is_empty() -> Bool
	{
		return self.list.isEmpty
	}
}