//
//  Library.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 01/02/2018.
//  Copyright © 2018 TecTec. All rights reserved.
//

class Library {

    private var restaurants: [Restaurant] = []
    //    var restaurants = [Restaurant]()
    //    var restaurants: Array<Restaurant> = []
    //    var restaurants = Array<Restaurant>()

    func add(_ resto: Restaurant) {
        restaurants.append(resto)
    }

    func remove(_ r: Restaurant) {

        // trouver l'index
        if let index = restaurants.index(of: r) {
            restaurants.remove(at: index)
        }
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
