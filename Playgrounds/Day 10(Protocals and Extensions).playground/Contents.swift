protocol Identifiable {
    var id: String { get set }
    func identify()
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

protocol Payable{
    func calculateWages() -> Int
}


protocol NeedsTraining{
    func study()
}

protocol HasVacation{
    func takeVacation(days:Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }
//Combines all protocals^^

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection{
    func summarize(){
        print("There are \(count) of us:")
        
        for name in self{
            print(name)
        }
    }
}

pythons.summarize()
//"Collection" is a part of arrays, dictionarys etc. extending collections allows u to give the collections more properties/Functions

extension Identifiable{ //this lets u create default code for functions, thru extensions
    func identify(){
        print("My ID is \(id)")
    }
}

struct User1: Identifiable{
    var id: String
}
