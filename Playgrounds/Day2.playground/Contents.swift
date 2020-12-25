let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

//arrays (have order)
let beatles = [john, paul, george, ringo]
beatles[0]

//sets (random order)(unique itmes)
let colours = Set(["red","green","blue"])
let colors2 = Set(["red","green","blue","blue"])//blue be ignored


//Tuples (cannot add/remove items, cannot change type of item)
/*
 tuples are used as Dictionaries in python are used, usuallly to create the properties of objects such as address gender, age etc
 */
var name = (first: "Taylor", last: "Swift")
name.0
name.first


//dictionary
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran":  1.73
]
heights["Taylor Swift"]
//Dictionary default value (if key does not exist)
let favouriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favouriteIceCream["Paul"]
favouriteIceCream["Charlotte", default: "unknown"]

//Collections
var teams = [String:String]()
teams["Paul"] = "Red"

var words = Set<String>()
var numbers = Set<Int>()

var results  = [Int]()

//Alternative ways of creating arrays and Dictionary with <> brackets
var scores = Dictionary<String, Int>()
var results1 = Array<Int>()

//ENUMS (Only use for certain values that have a fixed amount of variations, eg error types, and not height of ppl
enum Result{
    case success(message: String)//enum associated values
    case failure(error: String)
    case idk(reason: String)
}

let result4 = Result.failure
