import UIKit

// 1.დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)

func IsPalindrome(word: String) -> Bool {
    var reversedWord = ""
    for mirrorReflectedWord in word{
        reversedWord = String(mirrorReflectedWord) + reversedWord
    }
    if reversedWord == word {
        return true
    } else {
        return false
    }
}
IsPalindrome(word: "სალომე")

var name = "Salome"
var reversed = String(name.reversed())

if name == reversed {
    print("სარკისებურია")
} else {
    print("არაა სარკისებური")
}


// 2.დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.

var array1:Array = [2, 5, 3, 4]
var sortedArray = array1.sorted()
var result = sortedArray.reduce (into: [Int]())
{ result, value in result.append(value * value)
    
    func newArray (sortedArray:Array<Int>) -> Array<Int> {
        return result
    }
    print(result)
    
    // 3. დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან.
    
    
    //var myArray = [1, 4, 5, 6, 77, 22]
    //var filterOddNumber: ([Int]) -> [Int] = {
    //   var filtered = [Int]()
    //   for numbers in myArray {
    //if numbers % 2 != 0 {
    //    filtered.append(numbers)
    //  return filtered
    //}
    // print(filtered)
    // }
    // }
    //var result1 = filterOddNumber
    //print(result1)
    
    
    // 4.დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება.
    
    var newArray1:Array = [1, 5, 7]
    func sumArray(numbers: [Int], date: @escaping (Int) -> Void) {
        var sum = 0
        for numbers in newArray1 {
            sum = numbers + sum
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0)  {
            date(sum)
        }
    }
    sumArray(numbers: [1,5,7]) { sum in
        print(sum)
    }
    
    
    //5. შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი
    
    
    var contacts = ["ელისაბედი": "555 55 55 55"]
    print(contacts)
    //დამატება
    contacts["გიორგი"] = "333 33 33 33"
    print("Updated Dictionary: ", contacts)
    
    //მოძებნა/წაშლა
    
    var removedValue = contacts.removeValue(forKey: "ელისაბედი")
    print("Dictionary After removeValue(): ", contacts)
    
    // 6. დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key ელემენტების მასივს.
    
    var dictionary: [String: Int] = [
        "Salome": 26,
        "Giorgi": 25,
        "Elisabedi": 2
    ]
    
    func alphabetSort( dictionary: [String : Int]) -> [String] {
        dictionary.keys.sorted()
    }
    print(alphabetSort(dictionary: dictionary))
}


// 7. შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ.

var numbers  = [2.3, 0.2, 3.5, 7.8]
var numbers2 = [6.2, 7.1, 8.1]
var numbers3 = numbers + numbers2
numbers.append(contentsOf: numbers2)
var highestNumber: Double = 0
var max = numbers3.sorted()
for number in numbers3 {
    if number > highestNumber {
        highestNumber = number
    }
}
print(highestNumber)

// 8. მოცემულია Dictionary სადაც წარმოდგენილია ლელა წურწუმიას სიმღერებისა და მათი ხანგრძლივობა(წმ) მონაცემები:
let lelaWhatMovementIsThis: [String: Int] = [
    "ღამის ,სიჩუმე, გაფანტე,": 235,
    "ვიხსენებ ყველაფერს თავიდან": 219,
    "სულელი წვიმა": 231,
    "ალალ მე": 231,
    "იდუმალი ღამე": 221,
    "ჩუმად ნათქვამი": 199,
    "თეთრი ქარავანი": 221,
    "ძველი ვერხვები": 193
]
//1. დაწერეთ ფუნქცია რომელიც გამოითვლის და დაბეჭდავს სიღერების ჯამურ ხანგრძლივობას წუთებში და წამებში
    
var duration = lelaWhatMovementIsThis.values
let totalDuration = duration.reduce(0, +)
var minutes = (totalDuration / 60)
var seconds = totalDuration - minutes * 60

func duration (string : Int) -> (Int){
   
    return totalDuration
}
    print(minutes, "წუთი და ", seconds, "წამი")

// 2.დაწერეთ ფუნქცია რომელიც იპოვის და დაბეჭდავს ყველაზე ხანგრძლივი და ხანმოკლე სიმღერის სახელს.

   var sortedArrayX = duration.sorted()
   var longest = sortedArrayX[sortedArrayX.count-1]
   var shortest = sortedArrayX[0]
func highestAndShortest (_: Int ) -> (Int){
    return longest; shortest
}
    
print("ყველაზე გრძელი - ", longest, ", ყველაზე მოკლე - ", shortest)

// 3. დაწერეთ ფუნქცია რომელიც გამოითვლის სიმღერების საშუალო ხანგრძლივობას
var count = duration.count
var avarage = totalDuration / count
func avarageOfDuration() -> Int {
    var count = duration.count
    var avarage = totalDuration / count
    return avarage
}
print(avarage)

// 4. დაწერეთ ფუნქცია რომელიც შემთხვევითად ამოარჩევს სიმღერას და დაბეჭდავს მის სახელს

var randomVal = lelaWhatMovementIsThis.values.randomElement()

for random in lelaWhatMovementIsThis {
    var randomVal = lelaWhatMovementIsThis.values.randomElement()
    print(randomVal ?? String())
}
