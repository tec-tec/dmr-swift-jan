//
//  Restaurant.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 01/02/2018.
//  Copyright © 2018 TecTec. All rights reserved.
//

struct Restaurant: Equatable {

    enum RestaurantStyle {
        case chinese
        case japanese
        case burger
        case pizza
        case other
    }
    
    static func ==(lhs: Restaurant, rhs: Restaurant) -> Bool {

        if lhs.name == rhs.name && lhs.adress == rhs.adress {
            return true
        }

        return false
    }


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

