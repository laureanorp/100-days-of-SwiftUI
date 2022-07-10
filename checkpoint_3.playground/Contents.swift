// Your goal is to loop from 1 through 100, and for each number:
// If it’s a multiple of 3, print “Fizz”
// If it’s a multiple of 5, print “Buzz”
//If it’s a multiple of 3 and 5, print “FizzBuzz”
// Otherwise, just print the number.

// Probably can be done more efficiently xD
for i in 1...100 {
    if (i % 3 == 0) && (i % 5 == 0) {
        print("\(i): FizzBuzz")
    }
    else if i % 3 == 0 {
        print("\(i): Fizz")
    }
    else if i % 5 == 0 {
        print("\(i): Buzz")
    }
    else {
        print(i)
    }
}
// Notes after finishing the checkpoint: I should have used isMultiple(of:) instead of "%"
