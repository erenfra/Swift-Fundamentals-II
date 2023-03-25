//: [⇐ Previous: 06 - Challenge - Overloads & Parameters](@previous)
//: ## Episode 07 - Functions as Parameters

//: Functions are data types, and can be assigned to variables and constants just like `Int` and `String`.
func add(_ number1: Int, _ number2: Int) -> Int {
    return number1 + number2
}

func delta(_ number1: Int, _ number2: Int) -> Int {
    return abs(number1 - number2)
}

add(5,4)
delta(3,7)
//: Functions can use functions as parameter and return types. Functions that do this are called  "higher-order functions"
typealias Operate = (Int, Int) -> Int

func getResult(_ operation: Operate , _ a: Int, _ b: Int) {
    let result = operation(a, b)
    print(result)
}

getResult(add, 4, 6)
getResult(delta, 2, 9)




//: A `typealias` lets you give a name to a compound type, or give *another* name to a named type.

// ---------------------------------------------------
typealias Student = (name: String, grade: Int)

let passingGrade = 50
let jessy: Student = (name: "Jessy", grade: 49)
let ozma: Student = (name: "Ozma", grade: 87)

func printPassStatus(for student: Student) {
  print(student.grade >= passingGrade ? "\(student.name) passed!" : "Try again, \(student.name).")
}

printPassStatus(for: jessy)
printPassStatus(for: ozma)
// ---------------------------------------------------

//: [⇒ Next: 08 - Conclusion](@next)
