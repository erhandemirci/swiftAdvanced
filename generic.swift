class Cat {
    var name: String
    init(name:String) {
        self.name = name
    }
}

class Dog {
    var name: String
    init(name:String) {
        self.name = name
    }
}
class keeper<Animal> {
    var animals: [Animal] = []
    var name:String
    init(name:String) {
        self.name = name
     
    }
    func lookAfter(_ animal:Animal) {
        animals.append(animal)
    }
    
}
var cat1 = Cat(name: "m1")
var cat2 = Cat(name: "m2")
var cat3 = Cat(name: "m3")

var dog1 = Dog(name: "d1")
var dog2 = Dog(name: "d2")
var dog3 = Dog(name: "d3")
var dog4 = Dog(name: "d4")

let christine = keeper<Cat>(name: "christine")
let erhan = keeper<Dog>(name: "erhan")


christine.lookAfter(cat1)
christine.lookAfter(cat2)
christine.lookAfter(cat3)

erhan.lookAfter(dog1)
erhan.lookAfter(dog2)
erhan.lookAfter(dog3)
erhan.lookAfter(dog4)
print(christine.animals.count)


func swappedThings <T, U> (_ x:T , _ y:U)-> (U,T) {
    
    return (y,x)
}
var sw = swappedThings("erhan", 10)

