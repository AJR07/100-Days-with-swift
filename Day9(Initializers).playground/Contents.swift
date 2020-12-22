import Cocoa

var str = "Hello, playground"

struct User{
    var username: String
    
    init(){ //upon initialization, username set to anonymous by defauly
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostrwas"


//SELF points to whatever instance of the struct is currently being used.
struct Person{
    var name: String
    init(name: String){
        print("\(name) was born!")
        self.name = name //self.name
    }
}

struct FamilyTree{
    init(){
        print("Creating family tee!")
    }
}

struct Person2{
    var name: String
    lazy var familyTree = FamilyTree()//Only creates this variable if its accessed (i.e. only when its needed for performance optimisations)
    init(name: String){
        self.name = name
    }
}

var ed = Person2(name: "Ed")
ed.familyTree

struct Student {
    static var classsize = 0//THIS BELONGS TO THE STRUCT ITSELF, (since its static), so its value will be shared accross all instances of the struct)
    var name: String
    init(name: String) {
        self.name = name
    }
}

var ed1 = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Person3{
    private var id: String//private only allows the methods inside the struct itself to read this value, and so its not redable from outside via Person3.id
    init(id: String){
        self.id = id
    }
    func identify() -> String{
        return "my id is \(id)"
    }
}

let ed3 = Person3(id: "12345")
