//: [⇐ Previous: 04 - Overloading](@previous)
//: ## Episode 05 - Advanced Parameters

// --------------------------------------
let passingGrade = 50
let jessyGrade = 49
let ozmaGrade = 87
let ozmaAllGrades = [60, 96, 87, 42]
// --------------------------------------

//: ### Variadic Parameters
func getAverageGrade (_ grades: Int...) -> Int {
    var sum = 0
    for grade in grades {
        sum += grade
    }
    return sum / grades.count
    
}

getAverageGrade(50, 20, 100)


func getHighestGrade(_ grades: Int...) -> Int {
    grades.max() ?? 0
}

getHighestGrade()

func combineWords (_ words: String...) -> String {
    var text = ""
    for word in words {
        text += word
        text += " "
    }
    return text
}

combineWords("house", "pet", "gutter")
//: ### Inout Parameters

// --------------------------------------
var count = 0
// --------------------------------------

func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&count)
incrementAndPrint(&count)
incrementAndPrint(&count)
incrementAndPrint(&count)
incrementAndPrint(&count)
//: [⇒ Next: 06 - Challenge - Overloads & Parameters](@next)
