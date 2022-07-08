// Checkpoint 2
//  Create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

let myAnimals = ["dog", "cat", "cat", "bird", "snake", "snake"]
print("My number of animals: \(myAnimals.count)")
let uniqueAnimals = Set(myAnimals)
print("How many kind of animals I have: \(uniqueAnimals.count)")
