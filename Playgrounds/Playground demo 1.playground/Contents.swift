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


//: COLLECTIONS

var villes = ["Paris","Bordeaux","Lyon","Marseille"]

//Recupération
villes[3]

//Remplacement
villes[1] = "Montpellier"

//Range
villes[0...2]
villes

villes[0...2] = ["Vitrolles", "Aix"]
villes


villes.contains("Paris")


var nbHabitants = ["Paris" : 2_250_000, "Bordeaux" : 239_000, "Lyon" : 491_268, "Marseille" : 850_636]

nbHabitants["Toulouse"]

nbHabitants["Toulouse"] = 340_000

nbHabitants["Toulouse"]

//nbHabitants.removeValue(forKey: "Toulouse")

let habTlse = nbHabitants["Toulouse"]

if habTlse != nil {
    habTlse! * 2
}

func ecrit(_ items: String...) {

    for elemnt in items {
        print(elemnt)
    }
}

ecrit("yyyy", "jyfj")
print("toto", "tata", "titi")
//: Optionals

// Int? / String? / Float?
// Optional<Int> / Optional<String>

// [Int] / Array<Int>

// Avant usage, il faut déballer

class Human {

    let name: String
    var age: Int

    var child: Human?

    init(name: String, age: Int = 0, child: Human? = nil) {

        self.name = name
        self.age = age

        self.child = nil
    }

    func childAge() -> Int? {

        if let age = child?.age {
            return age
        } else {
            return nil
        }
    }
}

let me = Human(name: "me")
let child = Human(name: "toto")
child.age = 10

me.child = child

if let childName = me.child?.name {
    print(childName)
}

let childAge = me.childAge()?.description


let intString = "25.7"

if let floatValue = Float(intString) {
    let intValue = Int(floatValue)
    let result = Float(4) / Float(2)
} else {
    print("J'attend un nombre")
}

//let citiesVisited = Set<String>()
var citiesVisited: Set<String> = []

citiesVisited.insert("Paris")
citiesVisited.insert("Lille")
citiesVisited.insert("Lyon")
citiesVisited.insert("Marseille")

citiesVisited.count

let citiesYouVisited: Set = ["Marseille", "Lyon", "Dijon"]


let citiesWeCanTalk = citiesVisited.symmetricDifference(citiesYouVisited)


//: Enums ++

//Raw values

enum TransportType: String {
    case car = "voiture"
    case train
    case plane
    case rocket

    static var all: [TransportType] {
        return [.car, .train, .plane, .rocket]
    }
}

var p: TransportType = .plane
p = .train


p.rawValue

for truc in TransportType.all {
    print(truc.rawValue)
}


struct Parcel {
    var origin: String
    var destination: String

    let transportMode: TransportType
}

let json = "kugkjgk"
if let result = TransportType(rawValue: json) {
    p = result
    let moclis = Parcel(origin: "", destination: "", transportMode: result)
}


//Associated values

enum PlaneStatus {
    case onTime
    case delayed (delay: Int, cause: String)
    case cancelled

    init?(state: String, delay: Int?, message: String?) {

        switch state {
        case "A lh'eure":
            self = .onTime
        case "En retard":
            if let d = delay, let m = message {
                self = .delayed(delay: d, cause: m)
            } else {
                return nil
            }
        case "Annulé":
            self = .cancelled
        default:
            return nil
        }

    }

    var valeurBrute: String {
        switch self {
        case .onTime:
            return "A lh'eure"
        case .delayed:
            return "En retard"
        case .cancelled:
            return "Annulé"
        }
    }
}

struct Flight {

    let flightNumber: String
    let origin: String
    let destination: String

    var status: PlaneStatus
}



var af84 = Flight(flightNumber: "AF84", origin: "CDG", destination: "SFO", status: .onTime)

af84.status = .delayed(delay: 15, cause: "Fog")
af84.status.valeurBrute




