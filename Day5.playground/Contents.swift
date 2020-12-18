import Cocoa

var str = "Hello, playground"

func printHelp(){
    let message = """
    Welcome to MyApp!
    
    Run this app inside a directory of....
    """
    print(message)
}
printHelp()

func square(number:Int) -> Int{
    return number*number
}
let result = square(number:8)

//Internal and external parameter labels
func sayHello(to name: String){
    print(name)
}

func greet(_ person:String){ //no external parameter name
    print("Hello \(person)!")
}

greet("Hallo")

func greet(_ person:String, nicely:Bool = true){
    if nicely == true{
        print("Hello \(person)")
    }
    else{
        print("LOL")
    }
}
let nicely = false
greet("Halllo")
greet("hello", nicely: nicely)

func square(numbers:Int...){//Any amount of parameters of the same type, there can be 1 parameter to numbers, or thousands.
    for number in numbers{
        print("\(numbers) squared = \(number * number)")
    }
}

enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

do{
    try checkPassword("password")
    print("That password is good!")
}
catch{
    print("You can't use that password")
}

func doubleInPlace(number: inout Int){
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
