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
