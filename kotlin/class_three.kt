class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for (item in items) {
            totalPrice += item.price
        }
        return totalPrice
    }
}

data class Item(val name: String, val price: Double)

fun main() {
    val shoppingCart = ShoppingCart()

    val item1 = Item("Product 1", 10.0)
    val item2 = Item("Product 2", 20.0)
    val item3 = Item("Product 3", 15.0)

    shoppingCart.addItem(item1)
    shoppingCart.addItem(item2)
    shoppingCart.addItem(item3)


    val totalPrice = shoppingCart.calculateTotalPrice()

    println("Total price: $totalPrice")
}