/*Ingredient acts primarily as a wrapper to consolidate and allow an easy way to access the appropriate data types
* and modify them, should changes need to be made.
*/
public class Ingredient: Equatable, Hashable
{
	private var name = ""
	private var item_type = ""
	private var quantity = 0.0
	private var unit = ""
	
	public init(name: String, item_type: String, quantity: Double)
	{
		self.name = name
		self.item_type = item_type
		self.quantity = quantity
	}
	
	public init(name: String, item_type: String, quantity: Double, unit: String)
	{
		self.name = name
		self.item_type = item_type
		self.quantity = quantity
		self.unit = unit	
	}
	
	/*Adjusts the quantity of the ingredient by the amount given.
	if amount is negative decreases the amount, otherwise increases the amount
	Can be treated as a setter and a getter
	Returns the quantity
	*/
	public func adust_quantity(amount: Double) -> Double
	{
		self.quantity += amount
		return self.quantity
	}

	/*Setter for name
		should change to allow for interactive input
	*/
	public func set_name(new_name: String)
	{
		self.name = new_name
	}
	
	/*Setter for item_type
	*/
	public func set_item_type(new_type: String)
	{
		self.item_type = new_type
	}
	
	/*Setter for unit
		should change to allow for interactive input
	*/
	public func set_units(new_unit: String)
	{
		self.unit = new_unit
	}
	
	/*Getter for name
	*/
	public func get_name() -> String
	{
		return self.name
	}
	
	/*Getter for item_type
	*/
	public func get_item_type() -> String
	{
		return self.item_type
	}
	
	/*Getter for unit
	*/
	public func get_unit() -> String
	{
		return self.unit
	}
	
	/*Compares difference in letters of a string
		traditional comparator return values*/
	public func compare(item: Ingredient) -> Int
	{
		var retval = 0
		for (letter1, letter2) in zip(self.name, item.name)
		{
      retval = Int(String(letter1))! - Int(String(letter2))!
			if(retval != 0)
			{
				break
			}
		}
		return retval
	}
	
	public func hash(into hasher: inout Hasher)
  	{
    		hasher.combine(self.name)
    		hasher.combine(self.item_type)
    		hasher.combine(self.quantity)
    		hasher.combine(self.unit)
  	}
  
  	public static func ==(lhs: Ingredient, rhs: Ingredient) -> Bool
  	{
    		return lhs.name.elementsEqual(rhs.name)
  	}
}

