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

