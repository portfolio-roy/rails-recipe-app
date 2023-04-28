json.array! @ingredients.filter_map{|a| {
    name: a.food.name,
    measurement_unit: a.food.measurement_unit,
    missing_quantity: a.quantity - a.food.quantity,
    value: a.value,
    subtotal: (a.quantity - a.food.quantity)*a.value,
    } if a.quantity > a.food.quantity}