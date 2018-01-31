//: Playground - noun: a place where people can play

enum RestaurantStyle {
    case chinese
    case japanese
    case burger
    case pizza
    case other
}

struct Route {

}

struct Restaurant {

    let name: String
    let adress: String
    let style: RestaurantStyle

    var mediumPrice: Int
    var notation: Float?
    var isVisited: Bool

    func findRoute() -> Route {

        //currentPosition
        return Route()
    }
}

class Library {

    private var restaurants: [Restaurant] = []
//    var restaurants = [Restaurant]()
//    var restaurants: Array<Restaurant> = []
//    var restaurants = Array<Restaurant>()

    func add(_ resto: Restaurant) {
        restaurants.append(resto)
    }

//    func list() -> [Restaurant] {
//        return restaurants
//    }

    //Computed property get-only
    var allRestaurants: [Restaurant] {
        return restaurants
    }
//
//    var allRestaurant2: [Restaurant] {
//        get {
//            return restaurants
//        }
//        set {
//            restaurants = newValue
//        }
//    }
}

let dir = Library()

let resto1 = Restaurant(name: "", adress: "", style: RestaurantStyle.chinese, mediumPrice: 10, notation: nil, isVisited: false)

dir.allRestaurants

dir.add(resto1)

dir.allRestaurants










