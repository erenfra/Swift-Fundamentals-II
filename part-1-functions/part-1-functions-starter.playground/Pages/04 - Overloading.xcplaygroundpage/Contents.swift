//: [⇐ Previous: 03 - Challenge - Functions](@previous)
//: ## Episode 04 - Overloading

// --------------------------------------
let passingGrade = 50
let jessyGrade = 49
let ozmaGrade = 87
let ozmaAllGrades = [60, 96, 87, 42]
// --------------------------------------

//: ### Function overloads
//func getPassStatus(for grade: Int) -> Bool {
//    return grade >= passingGrade
//
//}
//
//func getPassStatus(for grade: Int, passGrade: Int) -> Bool {
//    return grade >= passGrade
//}

//getPassStatus(for: jessyGrade)
//getPassStatus(for: ozmaGrade, passGrade: 80)

// To resolve the overloading I can wirte one function that takes in consideration the initial value

func getPassStatus(for grade: Int, passGrade: Int = passingGrade) -> Bool {
    return grade >= passGrade
}

getPassStatus(for: jessyGrade)
getPassStatus(for: ozmaGrade, passGrade: 80)
//: Overload using Different Number of Parameters
func getPassStatus(for grades: [Int]) -> Bool {
    var totalGrade = 0
    for grade in grades {
        totalGrade += grade
    }
    let average = totalGrade / grades.count
    return average >= passingGrade
}

getPassStatus(for: ozmaAllGrades)
//: Use default values for parameters, instead of overloads, when you can



//: Overload using Different Parameter Types



//: Overload using Different Argument Labels, like Swift's `stride` functions
for i in stride(from: 10, to: 0, by: -2) {
    print(i)
}
for j in stride(from: 10, through: 0, by: -2) {
    print(j)
}


//: Overload using Different Return Types
func getValue() -> Int {
    return 13
}

func getValue() -> String {
    return "Meow"
}


let intValue: Int = getValue()
let stringValue: String = getValue()



//: [⇒ Next: 05 - Advanced Parameters](@next)

