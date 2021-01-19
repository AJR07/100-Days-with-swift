var age: Int? = nil //creates an optional
age = 38

var name: String? = nil


//trying to read a var that can be nil might cause a crash, so we unwrap it instead
if let unwrapped = name{
    print("\(unwrapped.count) letters")
}else{
    print("Missing name.")
}

//for guard code ur optional is possible to be used after guard code
func greet(_ name: String?){
    guard let unwrapped = name else{
        print("You didn't provide a name!")
        return
        //this will break the function if code fails (unwrapped = nil)
    }
    //this will be the part if ur code passes
    print("Hello \(unwrapped)!")
}


//Force unwrapping
let str = "5"
let num = Int(str)!//"!" is used to force unwrap code. ONLY DO THIS WHEN U KNOW ITS SAFE, aka now where str is 5, so it cna be convertered into int

//Implicitly unwrapped optionals
let age1: Int! = nil //the "!" shows that they are already unwrapped, so u dont need guard/if let, however it might crash if not used properly

func username(for id: Int)-> String?{
    if id == 1{
        return "Taylor Swift"
    }else{
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

let names = ["John", "Paul", "George", "Ringo"]

let beatle = names.first?.uppercased() //? is optional chaining, and swift will not try to proceed if its nil

//OLD ENUM CODE
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//Running check password
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

struct Person{
    var id: String
    
    init?(id: String){//an init that can return nil
        if id.count  == 9{
            self.id = id
        }
        else{
            return nil
        }
    }
}

//typecasting, checking if a certain obj or var is of that type(could be of a class or a struct)
class Animal{}
class Fish: Animal{}
class Dog: Animal{
    func makeNoise(){
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
