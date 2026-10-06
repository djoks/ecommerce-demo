// Placeholder

struct Product: Codable, Identifiable, Equatable {
    var id: Int
    var title: String
    var description: String
    var category: String
    var price: Double
    var discountPercentage: Double
    var rating: Double
    var brand: String
   
    /*
     "id": 3,
          "title": "Powder Canister",
          "description": "The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.",
          "category": "beauty",
          "price": 14.99,
          "discountPercentage": 9.84,
          "rating": 4.64,
          "stock": 89,
          "tags": [
            "beauty",
            "face powder"
          ],
     */

}
