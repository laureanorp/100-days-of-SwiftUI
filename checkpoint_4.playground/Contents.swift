// The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

// You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
// If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
// You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
// If you can’t find the square root, throw a “no root” error.

// Let's define the errors
enum SqrtErrors: Error {
    case outOfBounds, noRoot
}

func getSquareRoot(of number: Int) throws -> Int  {
    // Handle first error
    if number > 10000 || number < 0 {
        throw SqrtErrors.outOfBounds
    }
    // Handle normal scenario. Omg this is so ugly...
    var numberToTry: Int = 0
    var squaredResult: Int = 0
    // Try all numbers from 1 to "number"
    while squaredResult < number {
        squaredResult = numberToTry * numberToTry
        if squaredResult == number {
            return numberToTry
        }
        numberToTry += 1
    }
    throw SqrtErrors.noRoot
}

do {
    let root = try getSquareRoot(of: 2500 )
    print(root)
} catch SqrtErrors.noRoot {
    print("There is no square root for that number")
} catch SqrtErrors.outOfBounds {
    print("That number is out of bonds")
}

// After-hints notes:
// Actually I did it correctly, the hint said to loop from 1...10000 but I did it more efficiently by limiting it to the input number.

