//: Playground - noun: a place where people can play

let languageName = "Swift"
var version = Float(4.0)
var version2 = 4.0
let introductionYear = 2014
let isAwesome = true

let char: Character = "S"

version = Float(version2)

let nom = "Ludovic"
let age = 31

let resultat = nom + " est agé de " + String(age) + " ans"

//String interpolation
let resultat2 = "\(nom) est agé de \(age) ans"

resultat.isEmpty
resultat.hasPrefix("ludovic")

let chien: Character = "🐶"
let exclamation: Character = "!"

var 📩 = "Attention au \(chien)"
📩.append(exclamation)

📩.count

//: # Classes et Structures

class Animal {

    var numberOfPaws = 4
    let numberOfHeads = 1
    var name = "Cat"
    var isSoooooCute = true
}

class Bird: Animal {

    var canFly = true

    func eat(_ food: String, with friend: String) {

        print("Je mange \(food) avec \(friend)")
    }

}

let myBird = Bird()

struct Vehicule {

    var numberOfWheels = 4
    let plate = "HGFJKDGFEFD"
}

let myCat = Animal()
myCat.name = "Félix"

let myCat2 = myCat
myCat2.name = "Tom"

//myCat2 = Animal()

let myCar = Vehicule(numberOfWheels: 3)

var myCar2 = myCar
myCar2.numberOfWheels = 4

myCat.name
myCat2.name

myCar.numberOfWheels
myCar2.numberOfWheels

//: Fonctions et méthodes

// Sans paramètres, sans retours
func eat() {
    print("Je mange")
}

eat()
eat()

// Avec 1 retour
func sayHello() -> String {

    return "Hello"
}

let hello = sayHello()

//1 Parametre
func countCharacters(_ text: String) -> Int {
    let numberOfCharacters = text.count
    return numberOfCharacters
}

var str = "Hello"
countCharacters(str)

func countCharacters(text: String, plus: Int) -> Int {

    let numberOfCharacters = text.count
    return numberOfCharacters + plus
}

countCharacters(text: "Hello", plus: 5)


func eat(_ food: String, with friend: String) {

    print("Je mange \(food) avec \(friend)")
}

eat("Pizza", with: "Paul")

















