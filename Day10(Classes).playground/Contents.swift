class Dog{
    var name: String
    var breed: String
    init(name:String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "hallo", breed: "Idk")

class  Poodle: Dog{//inheriting properties and methods
    init(name: String){
        super.init(name:name, breed: "Poodle")
        //also does init from  parent class
    }
}

class Dog1 {
    func makeNoise() {
        print("Woof!")
    }
}

final class Poodle1: Dog1 {//u cannot override functions if u inherit the properies from it, since it has the final keyword
    override func makeNoise() { //overriding the functions inside Dog1
        print("Yip!")
    }
}

//Classes properties are static by default, so changing one changes another that has a copy of the same class
class Singer{
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Beiber"

print(singer.name)

class Person2 {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {//runs when the variable is destroyed/no longer available
        print("Person is no more!")
    }
}

for _ in 1...3{
    let person = Person2()
    print(person.printGreeting())
}

//Classes that are constants can change variables that are vars. they do not need mutating
class Singer1 {
    var name = "Taylor Swift"
}

let taylor = Singer1()
taylor.name = "Ed Sheeran"
print(taylor.name)
