class Ingredient
    attr_accessor :name, :aisle, :kcal, :protein, :fat, :sat_fat, :carb, :sugar, :salt

    def initialize(name, aisle, kcal, protein, fat, sat_fat, carb, sugar, salt)  # These parameters are fairly self explanatory
        @name = name
        @aisle = aisle
        @kcal = kcal
        @protein = protein
        @fat = fat
        @sat_fat = sat_fat
        @carb = carb
        @sugar = sugar
        @salt = salt
    end
end

class Meal
    attr_accessor :name, :mealtime, :prep_mins, :cook_mins, :user_tags, :analysis_tags

    def initialize(name, mealtime, ingredients, prep_mins, cook_mins, user_tags)
        @name = name
        @mealtime = mealtime
        @ingredients = ingredients  # Should this not be some hash or array containing the quantities too?
        @prep_mins = prep_mins
        @cook_mins = cook_mins
        @user_tags = user_tags
        @analysis_tags = []  # This property is reserved for tags assigned by the meal analysis feature
    end

    def total_time  # returns total time to make the meal
        "total time: #{[@prep_mins, @cook_mins].sum} minutes"
    end

    def print_ingredients
        @ingredients.each do |ingr|
            print "#{ingr.name}, "
        end
    end

    def nutrition
        # this method will provide a nutritional summary of the whole meal
    end
end

class Store
    attr_accessor :franchise, :store_location, :aisle_order
    def initialize(franchise, store_location, aisle_order)
        @franchise = franchise
        @store_location = store_location
        @aisle_order = aisle_order
    end
end

# HERE BEGINS THE COMPILING OF INGREDIENTS ... could this not be a module of CONSTANTS?
onion = Ingredient.new("onion", "fruit and veg", 0, 0, 0, 0, 0, 0, 0)
pepper = Ingredient.new("pepper", "fruit and veg", 0, 0, 0, 0, 0, 0, 0)
mushroom = Ingredient.new("mushroom", "fruit and veg", 0, 0, 0, 0, 0, 0, 0)
garlic_clove = Ingredient.new("garlic clove", "fruit and veg", 0, 0, 0, 0, 0, 0, 0)
beef_stock_cube = Ingredient.new("beef stock cube", "herbs and spices", 0, 0, 0, 0, 0, 0, 0)
mince = Ingredient.new("mince", "fresh meat", 0, 0, 0, 0, 0, 0, 0)
paprika = Ingredient.new("paprika", "herbs and spices", 0, 0, 0, 0, 0, 0, 0)
olive_oil = Ingredient.new("olive oil", "cooking oils", 0, 0, 0, 0, 0, 0, 0)
worcestershire_sauce = Ingredient.new("worcestershire sauce", "condiments", 0, 0, 0, 0, 0, 0, 0)


# HERE BEGINS THE COMPILING OF THE MEALS, below is a test meal
spag_bol = Meal.new("Spaghetti Bolognese", "dinner", [onion, pepper, mushroom, garlic_clove, beef_stock_cube, mince, paprika, olive_oil, worcestershire_sauce], 10, 30, ["family favorite"])

puts spag_bol.user_tags
puts ""
spag_bol.print_ingredients