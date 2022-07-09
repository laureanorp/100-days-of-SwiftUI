// DAY 1
import Cocoa

// Variable defining first time
var name = "Javi"
// Changing the value
name = "Laureano"

// Constants can't be changed. Try to use them mor ethan variables
let surname = "Perez"
// So, this fails: surname = "hey"

// Print is pretty simple
print(name, surname)

// Use \ to escape quotes. Use triple quotes (""") for multiline strings
let myString = "Hello, \"boss\""
// You can call the propertie count of a string
let nameLenght = name.count
print(nameLenght)
// You can also call a function that returns the uppercased version
let nameUppercased = name.uppercased()
print(nameUppercased)
// Or if it has some prefix/suffix
print(name.hasPrefix("Lau"))  // should return true
print(name.hasPrefix("Perro"))  // Should return false

// This is the same as 20000000, for readability
let score = 20_000_000
let doubleScore = score * 2
print(doubleScore)

var counter = 1
counter += 1
print(counter)
counter *= 10
print(counter)
// Interesting calls can be made:
print(doubleScore.isMultiple(of: 10))  // will return true

let number = 0.1 + 0.2  // Funny, it's not exactly 0.3
print(number)

// Type safety: you can't sum an int and a double: 1 + 2.0
let a = 1
let b = 2.0
print(Double(a) + b)
print(a + Int(b))

// We can't do this, because we define the string as type string
// var name = "Laureano"
// name = 10

// DAY 2
var userAuthenticated = false
userAuthenticated = !userAuthenticated  //toggle with !
print(userAuthenticated)
userAuthenticated.toggle()  // toggle with method
print(userAuthenticated)

// Combining strings
let firstPart = "Hello"
let secondPart = " world!"
var completeString = firstPart + "," + secondPart  // inefficient
print(completeString)
// fstrings but on Swift
completeString = "\(firstPart), \(secondPart). Score=\(score)"
print(completeString)

// DAY 3
var numbers = [1, 3, 5, 7]
var temperatures = [30.0, 37.5, 40.5, 42.1]
print(temperatures[0])  // 0-index based like python
temperatures.append(43)  // if I add an int, it's converted to double! Only one type of dada is allowed
print(temperatures)

var scores = Array<Int>()
scores.append(10)
scores.append(50)
print(scores)
// The short way of creating an array:
var scoresNew = [Int]()
scoresNew.append(10)
scoresNew.append(50)
print(scores)
// Or add elements at the beginning:
var albums = ["Fearless"]
albums.append("Folklore")
print(albums)
albums.remove(at: 1)
print(albums)
albums.append("Invented Album")
albums.append("Trumpets")
print(albums.sorted())
// Dicts use square brackets too!
let employee = [
    "name": "Laureano",
    "job": "Python Dev"
]
print(employee["name", default: "Unknown name"])
print(employee["address", default: "Unknown address"])
// Init a dict with types:
var heights = [String: Int]()
heights["Sita Mouw"] = 20
heights["Neko Mouw"] = 30
print(heights)

// Sets: unordered
var actors = Set(["Zendaya", "Tom Cruise", "Nicolas Cage"])
// We don't append, but instead insert
actors.insert("Tom Holland")
print(actors)
// Advantages: no duplicates allowed, much faster than arrays because of how is ordered internally

// Enums: certain values to choose from
enum Weekday {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
}  // or: enum Weekday {case Monday, Tuesday, Wednesday, Thursday, Friday}

var day = Weekday.Monday
day = .Friday  // we don't need to say Weekday again!
print(day)

// DAY 4
// Sometimes Swift infers the type of the variable
var surname2 = "Ruiz"
// But we can make it explicit
var surname3: String = "Ruiz"
// That allow us to overwrite a type:
let score2: Double = 20
print(score2)  // will print 20.0, not 20
// different ways of use type annotations
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()
// Types on enums
enum UIStyle {case light, dark, system}
var style = UIStyle.light

// This works because we are only saying the type, we haven't assign a value yet
let username: String
username = "@laureanorp"
// No matter if you use inference or annotations, Swift must know the type of your data at AL TIMES

// DAY 5
let speed = 90
if speed > 80 {
    print("You are going too fast!")
}
// Compare with: >, <, >=, <=, ==, !=,
// Comparing (string == "") is faster than using (string.count == 0) in Swift. But for that we use string.isEmpty
if username.isEmpty {  // no need to use == True, as it returns a bool directly
    print("No username!")
} else if username.count == 10 {
    print("Username is 10 chars long.")
} else {
    print("Other message...")
}
// Multiple conditions:
let temp = 25
if temp > 20 && temp < 30 {  // Use || for or
    print("It's a nice day!")
}

enum TransportOption {
    case airplane, helicopter, bus, bike, car
}
let transport = TransportOption.airplane  // remember, from now on we can write the enum case directly
if transport == .airplane || transport == .helicopter {  // like here
    print("Let's fly!")
} else {
    print("No flying this time...")
}
// Faster and more efficient than using if else if else if...: switch and cases!
switch transport {
case .airplane:
    print("Time to fly!")
case .bike:
    print("Time to do some exercise!")
case .helicopter:
    print("Time to fly!")
case .car:
    print("Time to spend on gas")
case .bus:
    print("Don't forget your mask")
}
// Swift requieres us to cover ALL cases of values of our enum. It stops when case matches.

let place = "Metropolis"
switch place {
case "Gotham":
    print("You are Batman")
case "Wakanda":
    print("You are black panther")
default:  // THIS HAS TO BE IN THE END of the cases. It allow us to exhaust the cases.
    print("Who are you?")
}
// fallthrough allow us to fall to the next case. This is not common.

// Ternary conditional operators. WTF. "What? ? True : False"
let age = 18
let canVote = age >= 28 ? "Yes" : "No"
print(canVote)
