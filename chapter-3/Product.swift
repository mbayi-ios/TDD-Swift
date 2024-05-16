
/**
 You need to write a function that, given an array of sold Products and a category value, returns the total amount sold for that category
 
 */

import XCTest

struct Product {
    let category: String
    let price: Double
}

func sumOf(_ products: [Product], withCategory category: String) -> Double {
    
    var sum =  0.0
    
    for product in products {
        sum += product.price
    }
   return products
        .filter{ $0.category == category }
        .reduce(0.0) { $0 + $1.price }
}


class ProducTest: XCTestCase {
    func testSumOfEmptyArrayIsZero() {
        let category = "books"
        let products = [Product]()
        
        let sum = sumOf(products, withCategory: category)
        
        XCTAssertEqual(sum, 0)
    }
    
    func testSumOfOneItemIsItemPrice() {
        let category = "books"
        let products = [Product(category: category, price: 3)]
        
        let sum = sumOf(products, withCategory: category)
        
        XCTAssertEqual(sum, 3)
    }
    
    func testSumOfItemsPricesForGivenCategory() {
        let category = "books"
        
        let products = [
            Product(category: category, price: 3),
            Product(category: "movie", price: 2),
            Product(category: category, price: 1)
            
        ]
        
        let sum = sumOf(products, withCategory: category)
        
        XCTAssertEqual(sum, 4)
    }
}
