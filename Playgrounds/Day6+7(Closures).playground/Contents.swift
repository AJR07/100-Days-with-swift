//MARK: Day 6
let driving = {
    print("I'm driving in my car")
}

driving()

//Accepting parameters
 
let driving1 = { (place: String) -> String in //here
    return "I'm going to \(place) in my car"
}

print(driving1("London"))


//Calling closesures using functions, passed in as "Action"
func travel(action: () -> Void){
    
    
    print("I'm ready to go")
    action()
    print("I arrived!")
}

travel(action: driving)

//trailing closure syntax
travel {
    print("Im driving in my car")//ONLY USEF WHEN CLOSURE IS LAST PARAMETER, this allows u to define the function on the spot and give it as the parameter
}

func travel1(action:(String)-> Void){
    print("I'm getting ready")
    action("London")
    print("I arrived!")
}

travel1 { (place:String) in
    print("I'm going to \(place) in my car")
}

//MARK: Day 7

travel1{ (place:String) in //This is calling a closure travel1, but at the same time accepting a string to be used as a parameter for the action code
    //https://www.hackingwithswift.com/sixty/6/6/using-closures-as-parameters-when-they-accept-parameters
    print("I'm going to \(place) in my car") //Using the parameter accepted by the code run from the closure
    
}

//Force a closure itself to return a value when called in the function itself. U can use this to assign a value to any variable in the function, or print it. Basically, instead of using the closure as just a peice of code add on to the function, u can get it to be give u back a value, somewhat like a function
func travel2 (action: (String) -> String){
    print("I am ready to go.")
    let description = action("London")
    print(description)
    print("I arrived")
}


func travel3(action: (String)-> String){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived")
}

travel3{ place in
    "I'm going to \(place) in my car"
}
//Another e.g. of ^
func travel4(action: (String, Int) -> String){
    print("I'm getting ready to go.")
    let description = action("London", 60) //This is where the two closure vairables gert passed into
    print(description)
    print("I arrived")
}

travel4 {
    "I'm going to \($0) at \($1) miles per hour"
}

func travel5() -> (String) -> Void{
    //------------^^The fucntion returns a closure, which accepts a parameter (String type), and the closure returns nothing, void
    return{
        print("I'm going to \($0)")
    }
}

var result = travel5()
result("London")

let result2: Void = travel5()("London")//first is for function, second is for closure itself

result = travel5()
result("London")

//CAPTURE A VARIABLE INSIDE A FUNCTION/CLOSURE (it might not exist anymore
func travel6() -> (String) -> Void{
    var counter = 1
    return{
        print("\(counter). I'm going to \($0)")
        counter += 1 //This capture gets captured for this closure, which means it would be stored inside
        //this means if u call this closure a few times, the closure will keep going up
    }
}


result = travel6()
result("London")
