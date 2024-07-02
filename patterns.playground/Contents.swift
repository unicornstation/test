import UIKit

// Factory

enum ProductsType {
    case vegetables
    case fruit
}

protocol Products {
    var title: String { get }
    var  calorie: Int { get }
    
    func countCalorie()
}

class Vegetables: Products {
    
    var title: String = "Cucumber"
    
    var calorie: Int = 2
    
    func countCalorie() {
        print("\(title) has \(calorie) cals.")
    }
}

class Fruit: Products {
    var title: String = "Strawberry"
    var calorie: Int = 5
    
    func countCalorie() {
        print("\(title) has \(calorie) cals.")
    }
}

class ProductsFactory {
    
    static let shared = ProductsFactory()
    private init() {}
    
    func createCalculation(type: ProductsType) -> Products {
        switch type {
        case .vegetables:
            return Vegetables()
        case .fruit:
            return Fruit()
        }
    }
}

let cucumber = ProductsFactory.shared.createCalculation(type: .vegetables)
