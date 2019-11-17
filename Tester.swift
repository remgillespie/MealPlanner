import XCTest

class Tester: XCTestCase {

	//INGREDIENT TESTS
    func testNewIngredient() {
        let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit:"")
        XCTAssertEqual(ingr.get_name(), "Milk")
        XCTAssertEqual(ingr.get_item_type(), "Dairy")
        XCTAssertEqual(ingr.adjust_quantity(amount:0), 1)
    }
	
    func testNewIngredient2() {
        let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit: "Gallon")
        XCTAssertEqual(ingr.get_unit(), "Gallon")
    }
	
	
	//RECIPE TESTS
    func testNewRecipe() {
        let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
        var ingredients: Set = [ingr] 
        let rcp = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")
        XCTAssertEqual(rcp.get_meal_name(), "Borgir")
        XCTAssertEqual(rcp.get_ingredients(), ingredients)
        XCTAssertEqual(rcp.get_directions(), "Eat borgir")
    }
	
    func testRecipeAddIngredient() {
        let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
        var ingredients: Set = [ingr] 
        var comp: Set = [ingr]

        let rcp = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")

        let mustard = Ingredient(name: "Mustard", item_type: "Condiment", quantity: 1, unit: "Bottle")
        comp.insert(mustard)

        rcp.add_ingredient(item: mustard)
        XCTAssertEqual(rcp.get_ingredients(), ingredients)
    }
	
    func testRecipeRemoveIngredient() {
        let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
        let mustard = Ingredient(name: "Mustard", item_type: "Condiment", quantity: 1, unit: "Bottle")
        var ingredients: Set = [ingr, mustard]
        var comp: Set = [ingr, mustard]

        let rcp = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")
        comp.remove(mustard)
        rcp.remove_ingredient(name: "Mustard")
        XCTAssertEqual(rcp.get_ingredients(), ingredients)
    }
	
	func testRecipeEmptyDirections() {
		let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
        var ingredients: Set = [ingr] 
        let rcp = Recipe(meal_name: "Borgir", ingredients: ingredients)
		
		XCTAssertEqual(rcp.get_directions(), "No directions")
	}
	
	func testRecipeCompare() {
		let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
        var ingredients: Set = [ingr] 
		let rcp1 = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")
		let rcp2 = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")
		let rcp3 = Recipe(meal_name: "Burger", ingredients: ingredients, directions: "Eat borgir")
		
		XCTAssertEqual(rcp1.compare(item: rcp2), 0)
		XCTAssertNotEqual(rcp1.compare(item: rcp3), 0)
	}
	
	func testRecipeIsMember() {
		let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
		let comp1 = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
		let comp2 = Ingredient(name: "Mustard", item_type: "Condiment", quantity: 1, unit: "Bottle")
        var ingredients: Set = [ingr] 
		let rcp = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")
		
		XCTAssert(rcp.is_member(item: comp1)) //I think this fails in the current setup of the is_member() function, because it only checks whether comp1 is already an object in the list. It should compare the ingredients themselves.
		XCTAssertFalse(rcp.is_member(item: comp2)))
	}	
	
	func testRecipeEquals() {
		let borgir = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
		let mstrd = Ingredient(name: "Mustard", item_type: "Condiment", quantity: 1, unit: "Bottle")
		var borgirs: Set = [borgir] 
		var mustard: Set = [mstrd] 
		var morgirs: Set = [borgir, mstrd]
		
		let rcp1 = Recipe(meal_name: "Borgir", ingredients: borgirs, directions: "Eat borgir")
		let rcp2 = Recipe(meal_name: "Borgir", ingredients: mustard, directions: "Eat borgir")
		let rcp3 = Recipe(meal_name: "Morgir", ingredients: morgirs, directions: "Eat borgir")
		
		XCTAssert(rcp1==rcp2) //different ingredients, but the same name means 1==2
		XCTAssertFalse(rcp1==rcp3)// different ingredients, different name. 1!=3
	
	
	//GROCERY LIST TESTS
	func testGroceryInit() {
		let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit:"Gallon")
		let milk: Set = [ingr]
		let glist = GroceryList(new_list: milk, list_size: milk.count())
		
		XCTAssertEqual(glist.get_list(), milk.ennumerated())
		XCTAssertEqual(glist.get_size(), 1)
	}
	
	func testGroceryInitBadSize() {
		let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit:"Gallon")
		let milk: Set = [ingr]
		let glist = GroceryList(new_list: milk, list_size: -100)
		
		XCTAssertEqual(glist.get_size, -100) // this functionality probably shouldn't exist.
	}
	
	func testGroceryAddItem() {
		let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit:"Gallon")
		let milk: Set = [ingr]
		let borgir = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
		let glist = GroceryList(new_list: milk, list_size: 1)
		
		XCTAssertEqual(glist.get_size(), 1)
		XCTAssert(glist.add_item(item: borgir))
		XCTAssertEqual(glist.get_size(), 2)
	}
	
	func testGroceryRemoveItem() {
		let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit:"Gallon")
		let milk: Set = [ingr]
		let borgir = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
		let glist = GroceryList(new_list: milk, list_size: 1)
		glist.add_item(item: borgir)
		
		XCTAssertEqual(glist.get_size(), 2)
		glist.remove_item(name: "Milk")
		XCTAssertEqual(glist.get_size(), 1)
		glist.remove_item(name: "Borgir")
		XCTAssert(glist.is_empty())
	}
	
	func testGrocery() {
		let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit:"Gallon")
		let milk: Set = [ingr]
		let glist = GroceryList(new_list: milk, list_size: 1)
		
		XCTAssert(glist.is_member("Milk"))
	}
}