import Cocoa

var str = "Hello, playground"

//Math operators (+-*/), % (Modulo/Remainder)

//"+" and "-" can be used to subtract and add things like arrays, values, and strings

//-=, +=, *=, /=

//>,<,<=,>=, !=, ==

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21{
    print("Blackjack!")
}else if firstCard + secondCard == 2{
    print("...")
}else{
    print("a")
}

//&&(and) || (or)

//Ternary operator
print(firstCard == secondCard ? "Cards are the same":"Cards are different")
//^^^Nesting the if in the print ^^^
let weather = "sunny"

switch weather{
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough //continue exectution into next case
default:
    print("Enjoy your day")
}

//Range code
switch score{
case 0..<50://if your score is less than 50 (from 0)
    print("You failed badly.")
case 50...85:
    print("You did not bad.")
}
