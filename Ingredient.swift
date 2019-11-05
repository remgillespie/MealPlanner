/*Ingredient acts primarily as a wrapper to consolidate and allow an easy way to access the appropriate data types
* and modify them, should changes need to be made.
*/
public class Ingredient
{
	private var name: ""
	private var item_type: ""
	private var quantity: 0.0
	private var unit: String? //measurement unit; not all items have a measurement, so it's optional
	
	public init(_ name: String, _ item_type: String, _ quantity: Float)
	{
		self.name = name
		self.item_type = item_type
		self.quantity = quantity
	}
	
	public init(_name: String, _ item_type: String, _ quantity: Float, _ unit: String)
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
	func adust_quantity(by amount: Float) -> Float
	{
		self.quantity += amount
		return self.quantity
	}

	/*Setter for name
		should change to allow for interactive input
	*/
	func set_name(to new_name: String)
	{
		self.name = new_name
	}
	
	/*Setter for item_type
	*/
	func set_item_type(to new_type: String)
	{
		self.item_type = new_type
	}
	
	/*Setter for unit
		should change to allow for interactive input
	*/
	func set_units(to new_unit: String)
	{
		self.unit = new_unit
	}
	
	/*Getter for name
	*/
	func get_name() -> String
	{
		return self.name
	}
	
	/*Getter for item_type
	*/
	func get_item_type() -> String
	{
		return self.item_type
	}
	
	/*Getter for unit
	*/
	func get_unit() -> String
	{
		return self.unit
	}
}






