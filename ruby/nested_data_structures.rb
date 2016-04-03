#constructing a restaurant hash

# kitchen
# counter
# seating_area
# bar
# pantry


restaurant = { 

	kitchen: {
		chefs: {
			chef_de_cuisine: "Sally Smith",
			sous_chef: "Bob Jones",
			chef_de_partie: {
				saute_chef: "James Sause",
				roast_chef: "Kelly Rooster",
				vegetable_chef: "Billy Broccoli",
		},
		utensils: {
			ladles: 10,
			serving_spoons: 20,
			fryer: 2,
			fridges: 2,
			ovens: 4,
			plates: [
				["service", "dinner", "luncheon", "salad", "fish"],
				["dessert", "cheese", "tea", "fruit"]
			]
		}
	}
	},
	counter: {
		waiter: {
			Monday: "Angela",
			Tuesday: ["Chelsea", "Don"],
			Friday: ["Yuri", "Zelda", "Waldo"] 
		},
		table_cloth: {
			Monday: [3, "red"],
			Tuesday: [5, "blue"],
			Friday: [9, "white"]
		}
	},
	seating_area: {
		Monday: "Dining Area",
		Tuesday: "Veranda",
		Friday: "Banquet Hall"
	},
	Menu: {
		Monday: {
			Soup: "Cream of Mushroom",
			Salad: "Cobb",
			Entree: "Eggplant Parmesan",
			Dessert: "Toffee Pudding"
		},
		Tuesday: {
			Appetizer: "Bruschetta",
			Salad: "Mixed Greens with Mozzerella",
			Entree: ["4 Cheese Ravioli", "Lobster Ravioli"],
			Dessert: "Apple Dumpling"
		},
		Friday: {
			Soup: "Vegetable Chili",
			Salad: "Spinach Salad",
			Entree: "Gnocchi with Buttered Asparagus",
			Dessert: "Cannoli"
		}
	}
	
}

p restaurant[:Menu][:Tuesday][:Entree][1]
p restaurant[:counter][:table_cloth][:Friday][1].upcase
p restaurant[:seating_area][:Tuesday] = "Patio"
p restaurant[:seating_area]