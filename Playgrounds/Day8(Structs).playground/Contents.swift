//Desiging ur own types

struct Sport{
    var name: String//Property of struct (of type string)r
    var isOlumpicSport: Bool
    
    var olympicStatus: String{
        if isOlumpicSport{ // returns different values depending on other properties (Computed properites)
            return "\(name) is an Olumpic sport"
        }
        else{
            return "\(name) is not an Olympic sport"
        }
    }
}

struct Progress{
    var task: String
    var amount: Int{
        didSet{//Observes the task property and runs the code below AFTER the property amount changes
            print("\(task) is now \(amount)% complete")
        }
        willSet{//Observes the task property and runs the code below BEFORE the property amount changes
            print("\(task) is going to become \(amount)% complete")
        }
    }
}


var progress = Progress(task: "Loading Data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct City{
    var population:Int
    
    func collecTaxes()-> Int{ //functions inside structs are called methods
        return population*1000
    }
}

let london = City(population: 9_000_000)
print(london.collecTaxes())


struct Person{
    var name: String
    
    mutating func makeAnonymous(){ //MUTATING keyward is only used for functions that are gonna change the properties inside the struct(because the variables that u change might be LET?)
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()


//STRINGS ARE STRUCTS (methods of strings below)
let string = "...."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

//ARRAYS ARE ALSO STRU TS
var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")
toys.firstIndex(of: "buzz")
print(toys.sorted())
toys.remove(at: 0)
//toys. shows all the methods and properties arrays have as structs
