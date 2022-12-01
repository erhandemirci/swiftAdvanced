import UIKit


class toyU {
    enum Kind {
        case ball, zombie , bone , mouse
    }
    enum Sound {
        case squek , bell
    }
    let kind: Kind
    let color: String
    let sound : Sound?
    init(kind:Kind,color:String,sound:Sound?=nil) {
        self.kind = kind
        self.color = color
        self.sound = sound
    }
    
    
}

class Toy
{
  enum Kind {
     case ball, zombie, bone, mouse
}
   enum Sound {
     case squeak, bell
 }
let kind: Kind
let color: String
var sound: Sound?
init(kind: Kind, color: String, sound: Sound? = nil) {
self.kind = kind
self.color = color
self.sound = sound
}
}
class PetU {
    enum Kind {
        case dog , cat , pig
    }
    let name : String
    let kind: Kind
    let favoriteToy : toyU?
    init(name:String,kind:Kind,favoriteToy:toyU? = nil){
        self.name = name
        self.kind = kind
        self.favoriteToy = favoriteToy
    }
    
}

class Pet {

enum Kind {
case dog, cat, guineaPig
}
let name: String
let kind: Kind
let favoriteToy: Toy?
init(name: String, kind: Kind, favoriteToy: Toy? = nil) {
self.name = name
self.kind = kind
self.favoriteToy = favoriteToy
}
}
class PersonU {
    let pet: PetU?
    init(pet: PetU? = nil) {
        self.pet = pet
    }
}

class Person {
let pet: Pet?
init(pet: Pet? = nil) {
self.pet = pet
}
}

let erhan = Person(pet: Pet(name: "zita", kind: .dog, favoriteToy: Toy(kind: .mouse, color: "red")))
let erhan2 = Person(pet: Pet(name: "zita", kind: .dog, favoriteToy: Toy(kind: .mouse, color: "red")))
let newPerson = Person()

                   
if let sound = erhan.pet?.favoriteToy?.sound {
    print("Sound \(sound).")
}else {
    print("no sound ")
}

let teams = [erhan, erhan2, newPerson]
let petNames = teams.compactMap{
    $0.pet?.name
}
for petName in petNames {
    print(petName)
}
class Pastry {
let flavor: String
var numberOnHand: Int
init(flavor: String, numberOnHand: Int) {
self.flavor = flavor
self.numberOnHand = numberOnHand
}
}
enum BakeryError: Error {
case tooFew(numberOnHand: Int), doNotSell, wrongFlavor
case inventory, noPower
}

class Bakery {
var itemsForSale = [
"Cookie": Pastry(flavor: "ChocolateChip", numberOnHand: 20),
"PopTart": Pastry(flavor: "WildBerry", numberOnHand: 13),
"Donut" : Pastry(flavor: "Sprinkles", numberOnHand: 24),
"HandPie": Pastry(flavor: "Cherry", numberOnHand: 6)
]
    func open(_ now: Bool = Bool.random()) throws -> Bool {
        print(now)
        guard now else {
            throw Bool.random() ? BakeryError.inventory : BakeryError.noPower
        }
        return now
    }


func orderPastry(item: String,
amountRequested: Int,
flavor: String) throws -> Int {
    guard let pastry = itemsForSale[item] else {
        throw BakeryError.doNotSell
    }
    

guard flavor == pastry.flavor else {
throw BakeryError.wrongFlavor
}
guard amountRequested <= pastry.numberOnHand else {
    throw BakeryError.tooFew(numberOnHand: 5)

}
pastry.numberOnHand -= amountRequested
return pastry.numberOnHand
}
}


let bakery = Bakery()

let openU = try? bakery.open()


let open = try? bakery.open(false)
let remaining = try? bakery.orderPastry(item: "Albatross",
amountRequested: 1,
flavor:
"AlbatrossFlavor")

do {
    try bakery.open()
    try bakery.orderPastry(item: "Albatross",
                           amountRequested: 1,
                           flavor: "AlbatrossFlavor")
}catch BakeryError.inventory, BakeryError.noPower {
    print("Sorry, the bakery is now closed.")
    } catch BakeryError.doNotSell {
    print("Sorry, but we don’t sell this item.")
    } catch BakeryError.wrongFlavor {
    print("Sorry, but we don’t carry this flavor.")
    } catch BakeryError.tooFew {
    print("Sorry, we don’t have enough items to fulfill your")
    }
