def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order

  fat = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170,
   }
   return fat[burger]+fat[side]+fat[beverage]


end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  total_fat = 0

  fat = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170,
    "Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca"),
    "Best Of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca"),
    "Best Of Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
   }

    orders.each do |food|
    total_fat = total_fat + fat[food]
   end

   return total_fat
end
