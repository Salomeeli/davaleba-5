import UIKit

var greeting = "Hello, playground"

// 1.დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)

 func checkIsPalindrome(n: String) -> Bool {
var word = ""
for i in n {
    word = String(i) + word
}
if word == n {
    return true
} else {
    return false
}
}
checkIsPalindrome(n: "სალომე")

var name = "salome"
var reversed = String(name.reversed())
    
if name == reversed {
    print("სარკისებურია")
} else {
    print("არაა სარკისებური")
}


// 2.დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.

var array1 = [1, 5, 3, 4]
var sortedArray = array1.sorted()
print(sortedArray.reduce(into: [Int]()) { result, value in
    result.append(value * value )
})

    // 7. შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ.
    
    var numbers  = [2.3, 0.2, 3.5, 7.8]
    var numbers2 = [6.2, 7.1, 8.1]
    var numbers3 = numbers + numbers2
    numbers.append(contentsOf: numbers2)
    var largestNumber: Double = 0
    var max = numbers3.sorted()
    for number in numbers3 {
    if number > largestNumber {
        largestNumber = number
    }
}
print(largestNumber)
    // 3. დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან.
    
    
    var myArray = [23, 54, 51, 98, 54, 23, 32];
    for myInt: Int in myArray{
        if myInt % 2 == 0 {
            
            print("\(myInt) is even number")
        }
    }


// 4.დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება.

func arraySum(n: [Int], date: @escaping (Int) -> Void) {
    var sum = 0

    for i in n {
        sum = i + sum
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0)  {
        date(sum)
    }
}
arraySum(n: [1,5,6]) { sum in
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
