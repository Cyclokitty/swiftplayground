import UIKit

var str = "Hello, playground"


// these are explicit declarations
let tax: Double = 0.13
let amount: Double = 100.00

// this is a constant. Cannot be changed but can be used over and over again
let welcome: String = "Welcome to my store."

// this is a variable and can be changed.
var totalSales: Double = (amount * tax) + amount

var salesDeclaration = """
\(welcome)
The amount due is \(totalSales)
Thank you!
"""

print(salesDeclaration)

// array, dictionary, set

//array
var shoppingList = ["coffee", "milk", "butter", "cheese"]
print(shoppingList[1])
// add to the end of the array
shoppingList.append("crackers")
print(shoppingList)

// to create an empty array
var emptyArray: [String] = []
print(emptyArray)


// dictionary: key/value pair
var occupations = [
    "Joe": "lawyer",
    "Emma": "teacher",
    "Lina": "programmer",
]

var colours = Set<String>()
colours.insert("green")
colours.insert("red")
colours.insert("blue")
colours.insert("purple")
colours.insert("red")

// a Set only contains unique values. Notice it only has one red
print(colours)
// iterating over a set

// print each item in an array
for item in shoppingList {
    print(item)
}

// print each person in dictionary
for person in occupations {
    print(person.key + "-> " + person.value)
}

// print each colour in the set
for colour in colours {
    print(colour)
}
print("----------")

// we can also print items in sets in order
for colour in colours.sorted() {
    print(colour)
}

// Control Flow
// use if and switch statements, and use for-in, while and repear-while to make loops

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)


// create a report card
let grades = [87, 63, 79, 73]
let name = "Laura"
var reportCard: [String] = []

for grade in grades {
    if grade > 90 {
        reportCard.append("A")
    } else if grade >= 80 && grade < 90 {
        reportCard.append("B")
    } else if grade >= 70 && grade < 80 {
        reportCard.append("C")
    } else if grade >= 60 && grade < 70 {
        reportCard.append("D")
    } else if grade >= 50 && grade < 60 {
        reportCard.append("E")
    } else {
        reportCard.append("F")
    }
}

print(reportCard);

// optionals
let nickname: String? = nil
let fullName: String = "Willy Wonka"
let informalGreeting = "Hi, \(nickname ?? fullName)"
print(informalGreeting)

// switch statments are my favourite

let clothing = "sweater"

switch clothing {
case "jeans":
    print("these are jeans. They go on your legs.")
case "boots":
    print("Boots on feet to keep dirt off your soles.")
case "hat":
    print("This goes on your head.")
case "sweater":
    print("You wear this if you can't pull off going topless.")
default:
    print("Don't go out naked! It's illegal.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]

var largest = 0;

for (num, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            print("From \(num): \(number)")
        }
    }
}

print(largest)

// while loops

var n = 2;
while n < 100 {
    n *= 2
    print(n)
}

print (n)

var tot = 0
for i in 0..<4 {
    tot += i
    print(tot)
}
print(tot)

var m = 2;
repeat {
    m *= 2
    print(m)
} while m < 100
print(m)

// Functions and closures

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

var laura = greet(person:"Laura", day:"Tuesday")
print(laura)


func betterReportCard(grades: [Int]) -> (min: Int, max: Int, average: Int) {
    var min = grades[0]
    var max = grades[0]
    var average = 0
    var sum = 0
    
    for grade in grades {
        if grade > max {
            max = grade
        } else if grade < min {
            min = grade
        }
        sum += grade
    }
    average = sum / grades.count
    return (min, max, average)
}

let newReportCard = betterReportCard(grades: grades)
print(newReportCard)
