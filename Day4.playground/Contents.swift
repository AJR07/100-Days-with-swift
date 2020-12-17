//for  loops
let count = 1...10
let Number  = 0
let albums = ["a", " b"]
for number in count {
    print("Number is \(Number)")
}

for album in albums{
    print("\(album) is on Apple Music")
}

var number = 1

//While loops
while number <= 20{
    print(number)
    number += 1
}

//Repeat Loop (Difference from while is that condition  comes at  the back, so it does the loop at least once)
number = 1
repeat{
    print(number)
    number += 1
}while number <= 20

//break to break out of loop, continue to skip the rest of the code in the loop and loop again

//To break out of serveral loops (or the loop that u want and not only the inner loop
outerloop: for i in 1...10{
    for j in 1...10{
        let product  =  i*j
        print("\(i)*\(j) is \(product)")
        if product ==  50 {
            print("It's a bullseye!")
            break outerloop //breaks the biggest loop
        }
    }
}
